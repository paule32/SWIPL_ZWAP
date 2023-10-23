// ----------------------------------------------------------------------------
// File   : nodetest.cpp
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
# include <stdio.h>
# include <stdlib.h>
# include <string.h>

// ----------------------------------------------------------------------------
// C++ header stuff:
// ----------------------------------------------------------------------------
# include <iostream>

// ----------------------------------------------------------------------------
// BORLAND VCL header stuff:
// ----------------------------------------------------------------------------
# include <vcl.h>

// ----------------------------------------------------------------------------
// Application - VCL specified code ...
// ----------------------------------------------------------------------------
TStringList* data_code;     // section .code
TStringList* data_data;     // section .data
TStringList* data_text;     // section .data(string)

char buffer[200];           // buffer for sprintf
int  float_counter = 1;     // float variable num counter

// ----------------------------------------------------------------------------
// Struktur für einen Knoten im Parse-Baum
// ----------------------------------------------------------------------------
typedef struct Node {
    char* value;            // Wert des Knotens
    struct Node* left;      // Verweis auf linkes Kind
    struct Node* right;     // Verweis auf rechtes Kind
} Node;

// ----------------------------------------------------------------------------
// Funktion zum Erstellen eines neuen Knotens
// ----------------------------------------------------------------------------
Node* createNode(char* value) {
    Node* node = (Node*)malloc(sizeof(Node));

    node->value = value;
    node->left = NULL;
    node->right = NULL;
    return node;
}

// ----------------------------------------------------------------------------
// Beispiel-Funktion zum Erstellen eines Parse-Baums
// ----------------------------------------------------------------------------
Node* buildParseTree() {
    Node* root         = createNode("add");
    Node* node;

    root->left         = createNode("3");
    root->right        = createNode("mul");

    root->right->left  = createNode("4");
    root->right->right = createNode("5");

    node = root->right->right;
    node->right = createNode("sub");
    node        = node->right;
    node->left  = createNode("6");
    node->right = createNode("2");
    node        = node->right;

    node->right = createNode("div");
    node        = node->right;
    node->left  = createNode("9");
    node->right = createNode("3");

    return root;
}

// ----------------------------------------------------------------------------
// Funktion zum Durchlaufen und Ausgeben des Parse-Baums (in-order Traversal)
// ----------------------------------------------------------------------------
void traverseParseTree(Node* node) {
    char num_buffer[200];
    if (node != NULL) {
        if (!strcmp(node->value,"add")) {
            sprintf(buffer,
                    "  fld dword [float_%d]  ; load value into FPU\n"
                    "  fld dword [float_%d]  ; float + float\n"
                    "  faddp st(1), st(0)    ; push result to stack\n",
                    float_counter+3,
                    float_counter+2);
                    float_counter++;
            data_code->Add(buffer);
            strcpy(num_buffer,node->left->value);
            node = node->right;
            if (!strcmp(node->value,"mul")) {
                float_counter++;
                sprintf(buffer,
                        "  fld dword [esp]   ; get stack (float + float)\n"
                        "  fld dword [float_m%d]\n"
                        "  fmulp st(1), st(0)\n"
                        "  fstp dword [esp]  ; store result on stack\n",
                        float_counter++);
                data_code->Add(buffer);
                sprintf(buffer,
                        "  float_m%d dd %s\n",
                        float_counter-1,
                        num_buffer);
                        float_counter++;
                data_data->Add(buffer);
            }   else
            if (!strcmp(node->value,"div")) {
                float_counter++;
                sprintf(buffer,
                        "  fld dword [esp]   ; get stack (float + float)\n"
                        "  fld dword [float_m%d]\n"
                        "  fdivp st(1), st(0)\n"
                        "  fstp dword [esp]  ; store result on stack\n",
                        float_counter++);
                data_code->Add(buffer);
                sprintf(buffer,
                        "  float_m%d dd %s\n",
                        float_counter-1,
                        num_buffer);
                        float_counter++;
                data_data->Add(buffer);
            }
            sprintf(buffer,
                    "  float_%d dd %s\n"
                    "  float_%d dd %s\n",
                    float_counter-1,node->left ->value,
                    float_counter-2,node->right->value);
            data_data->Add(buffer);
        }   else
        if (!strcmp(node->value,"sub")) {
            sprintf(buffer,
                    "  fld  dword [float_%d]  ; load value into FPU\n"
                    "  fsub dword [float_%d]  ; float - float\n"
                    "  fstp dword [esp]      ; push result to stack\n",
                    float_counter++ ,
                    float_counter++);
            data_code->Add(buffer);
           // node = node->right;
            sprintf(buffer,
                    "  float_%d dd %s\n"
                    "  float_%d dd %s\n",
                    float_counter-1,node->left ->value,
                    float_counter-2,node->right->value);
            data_data->Add(buffer);
        }   else
        if (!strcmp(node->value,"div")) {
            sprintf(buffer,
                    "  fld  dword [float_%d]  ; load value into FPU\n"
                    "  fdiv dword [float_%d]  ; float / float\n"
                    "  fstp dword [esp]      ; push result to stack\n",
                    float_counter++ ,
                    float_counter++);
            data_code->Add(buffer);
           // node = node->right;
            sprintf(buffer,
                    "  float_%d dd %s\n"
                    "  float_%d dd %s\n",
                    float_counter-1,node->left ->value,
                    float_counter-2,node->right->value);
            data_data->Add(buffer);
        }   else
        if (!strcmp(node->value,"mul")) {
            sprintf(buffer,
                    "  fld  dword [float_%d]  ; load value into FPU\n"
                    "  fmul dword [float_%d]  ; float * float\n"
                    "  fstp dword [esp]      ; push result to stack\n",
                    float_counter++ ,
                    float_counter++);
            data_code->Add(buffer);
          //  node = node->right;
            sprintf(buffer,
                    "  float_%d dd %s\n"
                    "  float_%d dd %s\n",
                    float_counter-1,node->left ->value,
                    float_counter-2,node->right->value);
            data_data->Add(buffer);
        }
        traverseParseTree(node->right);
    }
}

// ----------------------------------------------------------------------------
// clean-up stuff at exit ...
// ----------------------------------------------------------------------------
void atExitProc(void) {
    printf("clean memory...\n");

    data_data->Clear(); delete data_data;
    data_text->Clear(); delete data_text;
    data_code->Clear(); delete data_code;
}

// ----------------------------------------------------------------------------
// start entry point function:
// ----------------------------------------------------------------------------
int main() {
    try {
        atexit(atExitProc);

        // ------------------------------------------
        // init data structures
        // ------------------------------------------
        data_code = new TStringList;
        data_text = new TStringList;
        data_data = new TStringList;

        data_code->Add("section .code");
        data_text->Add("section .text");
        data_data->Add("section .data");

        data_code->Add("global _start");
        data_code->Add("_start:");
        data_code->Add("  finit  ; init FPU stack");

        data_data->Add("variable dd 3.14");

        // ------------------------------------------
        // build the parse tree:
        // ------------------------------------------
        Node* parseTree = buildParseTree();

        // ------------------------------------------
        // Durchlaufen und Ausgeben des Parse-Baums
        // ------------------------------------------
        traverseParseTree(parseTree);

        data_code->Add("  ret");

        // ------------------------------------------
        // output assembler:
        // ------------------------------------------
        cout << "; ---------------------------------" << endl
             << "; (c) 2023 by Jens Kallup - paule32" << endl
             << "; all rights reserved."              << endl
             << "; ---------------------------------" << endl;
        cout << data_code->Text
             << data_text->Text
             << data_data->Text
             << endl;

        return 0;
    }
    catch (...) {
        printf("unknown exception occured.\n");
        return -1;
    }

    return 0;
}

