// ***********************************************************************
//
//  SPREAD.CPP Test Program
//  List Viewer that displays/edits two-dimensional array
//  July 19, 1994
//  Adapted from TListViewer (C.Porter 70262,1047)
//  Curt Thompson  CIS - 70701,2402
// ***********************************************************************

#define Uses_TApplication
#define Uses_TBackground
#define Uses_TButton
#define Uses_TInputLine
#define Uses_TKeys
#define Uses_TDeskTop
#define Uses_TDialog
#define Uses_TListBox
#define Uses_TMenu
#define Uses_TMenuBar
#define Uses_TMenuItem
#define Uses_TRect
#define Uses_TScrollBar
#define Uses_TStaticText
#define Uses_TStatusDef
#define Uses_TStatusItem
#define Uses_TStatusLine

#include <tvision/tv.h>
#include <stdlib.h>
#include <math.h>
#include "sprdview.h"

const short numColumns = 11;
const short numRows = 18;
static ListRec ListData[numRows][numColumns];
const short numHeadRows = 2;
static const char *heading[numHeadRows * numColumns] = {
  /* 1st row. */ "ROOT", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR", "FACTOR",
  /* 2nd row. */ "NO." , "A"     , "B"     , "C"     , "D"     , "E"     , "F"     , "G"     , "H"     , "I"     , "J"
};
// Character width of each column.
static ushort cw[numColumns] = {
                  7    , 10      , 14      , 10      , 10      , 10      , 10      , 10      , 10      , 10      , 10
};
// Number of digits to right of decimal point to display.
static ushort dp[numColumns] = {
                  2    , 2       , 3       , 4       , 2       , 2       , 2       , 2       , 3       , 2       , 2
};


//  global data
const int cmAbout   = 100;  // User selected menu item 'About'
const int cmList    = 101;  // User selected menu item 'List'

//*******************************************************
class TApp : public TApplication
{
  public:

    TApp();

    // virtual functions to be locally redefined
    static TMenuBar *initMenuBar(TRect r);
    void handleEvent(TEvent &event);
    void idle();

    // declare new functions
    void AboutDialog();
    void ListDialog();

};


//*******************************************************
TApp::TApp() :
   TProgInit(TApplication::initStatusLine, TApp::initMenuBar,
   TApplication::initDeskTop)
{

  TRect r = getExtent();
  r.a.x = r.b.x - 13;
  r.a.y = r.b.y - 1;

}


//*******************************************************
TMenuBar *TApp::initMenuBar(TRect r)
{

  r.b.y = r.a.y + 1;
  return(new TMenuBar(r, new TMenu(
    *new TMenuItem("~A~bout", cmAbout, kbAltA, hcNoContext, 0,
	 new TMenuItem("~S~preadsheet", cmList, kbAltL, hcNoContext, 0)))));

}


//*******************************************************
void TApp::handleEvent(TEvent &event)
{

   TApplication::handleEvent(event);
   if (event.what == evCommand)
   {
      switch(event.message.command)
      {
	 case cmAbout:       // display the about box
            AboutDialog();
            clearEvent(event);
            break;
	 case cmList:        // display our list box
            ListDialog();
            clearEvent(event);
            break;
         default:
            break;
      }
   }

}


//*******************************************************
/* AboutDialog - create modal About dialog box */
void TApp::AboutDialog()
{

   TDialog *pd = new TDialog(TRect(0, 0, 35, 10), "About");
   if (pd)
   {
      pd->options |= ofCentered;
      pd->insert(new TStaticText(TRect(1, 2, 34, 6),
         "\003Spreadsheet Lookalike\n"
         "\003Curt Thompson CIS 70701,2402\n"));
      pd->insert(new TButton(TRect(13, 7, 22,9), "~O~k", cmOK, bfDefault));
      (void) deskTop->execView(pd);
   }
   destroy(pd);

}


//*******************************************************
void TApp::ListDialog()
{

  TRect r = getExtent();
  r.grow(-2,-3);

  TDialog *pd = new TListViewDialog(r, "Spreadsheet Lookalike",
    heading, numHeadRows, (ListRec *) &ListData[0][0], numColumns, numRows,
    &cw[0], &dp[0]);

  if (validView(pd))
  {

    // Allow re-sizing.
    pd->flags |= wfGrow;

    // Modal...
    (void) deskTop->execView(pd);

    // Distroy when done.
    destroy(pd);

  }

}


//*******************************************************
void TApp::idle() {

  TProgram::idle();

}


//************************************************************************
int main(void)
{

  for (int i = 0; i < numRows; i++)
  {
    ListData[i][0].val = (double) i;
    ListData[i][0].show = True;
    for (int j = 1; j < numColumns; j++)
    {
      ListData[i][j].val = sqrt(ListData[i][j-1].val);
      if (j == 4)
        ListData[i][j].show = False;
      else
        ListData[i][j].show = True;
    }
  }

  TApp myApp;
  myApp.run();
  return 0;

}
