// ----------------------------------------------------------------------------
// File   : pascalDisplayList.cpp
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

# include "FormTemplate.h"

std::vector< Node * > rootNodes;
class        Node *   currentRootNode = NULL;

std::map< int, std::string > globsl_tt_type;

// ----------------------------------------------------------------------------
// handle the created AST ...
// ----------------------------------------------------------------------------
void display_list()
{
    if (rootNodes.size() < 1) {
        ShowMessage("List is empty !");
        return;
    }

    Node * subnode1;
    for (unsigned int i1 = 0; i1 < rootNodes.size(); ++i1)
    {
        subnode1 = rootNodes.at( i1 );
        switch (subnode1->GetTokenType())
        {
            case tt_print_one:
            {   Node * subnode2;
                BOOL   found = false;
                AnsiString str = "";
                for (unsigned int i2 = i1; i2 < rootNodes.size(); ++i2)
                {
                    subnode2 = rootNodes.at( i2 );
                    switch (subnode2->GetTokenType())
                    {
                        case tt_const_string:
                            Node * subnode3;
                            for (unsigned int i3 = i2; i3 < rootNodes.size(); ++i3)
                            {
                                subnode3 = rootNodes.at( i3 );
                                if (subnode3->GetTokenTrace () ==
                                    subnode1->GetTokenTrace () ) {
                                    str += subnode3->GetData().c_str();
                                    found = true;
                                    break;
                                }
                            }
                        break;
                    }
                }
                if (found == false) {
                    ShowMessage( "command not free of bugs" );
                    break;
                }   else {
                    AnsiString result;
                    
                    bool insideQuotes = false;
                    bool escaped      = false;
                    bool isPercent    = false;
                    //bool isInteger    = false;

                    AnsiString formatSpecifier;
                    AnsiString numericValue;

                    bool readingNumericValue = false;

                    for (int i = 1; i <= str.Length(); i++) {
                        char c = str[i];
                        
                        if (isPercent) {
                            if (c == 's' || c == 'd') {
                                formatSpecifier = "%" + c;
                                //isInteger = (c == 'd');
                                isPercent = false;
                                if (!numericValue.IsEmpty()) {
                                    result += result += Format(formatSpecifier.c_str(),
                                    ARRAYOFCONST((StrToInt(numericValue))));
                                    numericValue = "";
                                    readingNumericValue = false;
                                }
                                continue;
                            } else {
                                result += "%" + c;
                                isPercent = false;
                            }
                        }

                        switch (c)
                        {   case '\\':
                            {
                                escaped = !escaped;
                                result += c;
                            }
                            break;

                            case '\"':
                            {
                                if (!escaped) {
                                    insideQuotes = !insideQuotes;
                                }
                            }
                            break;

                            case '\n':
                            {
                                if (insideQuotes) {
                                    result += "\n";
                                }
                            }
                            break;

                            case '\r':
                            {
                                if (insideQuotes) {
                                    result += "\r";
                                }
                            }
                            break;

                            case '\t':
                            {
                                if (insideQuotes) {
                                    result += "\t";
                                }
                            }
                            break;

                            case '%':
                            {
                                if (!insideQuotes) {
                                    isPercent = true;
                                } else {
                                    result += c;
                                }
                            }
                            break;

                            case '0': case '1': case '2': case '3':
                            case '4': case '5': case '8': case '9':
                            {
                                if (readingNumericValue) {
                                    numericValue += c;
                                }
                            }
                            break;

                            default:
                            {
                                if (readingNumericValue) {
                                    result += numericValue;
                                    numericValue = "";
                                    readingNumericValue = false;
                                }
                                if (insideQuotes || c != ' ' || escaped) {
                                    result += c;
                                }
                            }
                            break;
                        }

                        if (c != '\\') {
                            escaped = false; // Setze den escaped-Status zurück
                        }
                    }

                    result = StringReplace( result, "\\\"", "\"", TReplaceFlags() << rfReplaceAll );
                    result = StringReplace( result, "\\n" , "\n", TReplaceFlags() << rfReplaceAll );
                    result = StringReplace( result, "\\r" , "\r", TReplaceFlags() << rfReplaceAll );
                    result = StringReplace( result, "\\t" , "    ", TReplaceFlags() << rfReplaceAll);  // tode: SET TAB

                    {
                        char * buffer = (char*) malloc( strlen( result.c_str()));
                        buffer = strdup( result.c_str() );
                        WriteTextToConsole( buffer );
                    }
                }  
            }
            break;         

            case tt_print_two:
            {
            }
            break;
        }
    }
}

func_ShowParserErrorText ShowParserErrorText = NULL;
func_WriteTextToConsole  WriteTextToConsole  = NULL;

void EXPORT import_func_ShowParserErrorText ( void(*x)(char*) ) { ShowParserErrorText = x; }
void EXPORT import_func_WriteTextToConsole  ( void(*x)(char*) ) { WriteTextToConsole  = x; }

void EXPORT test1() { WriteTextToConsole( "Hallo" ); }
