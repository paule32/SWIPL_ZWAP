// ***********************************************************************
//
//  SPRDVIEW.CPP
//  List Viewer that displays/edits two-dimensional array
//  July 19, 1994
//  Adapted from TListViewer (C.Porter 70262,1047)
//  Curt Thompson  CIS - 70701,2402
// ***********************************************************************

#define Uses_TListBox
#define Uses_TEvent
#define Uses_TDialog
#define Uses_TInputLine
#define Uses_TScrollBar
#define Uses_TStaticText
#define Uses_TKeys
#define Uses_TWindow
#define Uses_TView
#define Uses_MsgBox
#include <tvision/tv.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "spreadview.h"

const int cmUpdateItemNumber   = 901;

#define cpMatrixViewer "\x1A\x1A\x1B\x1C\x1D\x06"

const char * const _NEAR TMatrixViewer::name = "TMatrixViewer";

TMatrixViewer::TMatrixViewer(const TRect& bounds, TScrollBar *aHScrollBar,
  TScrollBar *aVScrollBar, ushort *aColumnWidth) :
  TView(bounds), leftColumn(0), topRow(0), focusedColumn(0), focusedRow(0),
  numColumns(0), numRows(0), headingMode(False)
{
   short arStep, pgStep;

   columnWidth = aColumnWidth;

   options |= ofFirstClick | ofSelectable;
   eventMask |= evBroadcast;

   if (aVScrollBar != 0)
   {
      pgStep = size.y - 1;
      arStep = 1;
      aVScrollBar->setStep(pgStep, arStep);
   }

   if (aHScrollBar != 0)
      aHScrollBar->setStep(size.x, 1);

   hScrollBar = aHScrollBar;
   vScrollBar = aVScrollBar;

}


void TMatrixViewer::draw()
{
   short i, row, column;
   ushort normalColor, selectedColor, focusedColor, color;
   TDrawBuffer b;
   uchar scOff;
   ushort thisWidth;

   focusedColor = getColor(3);
   selectedColor = getColor(4);
   if (headingMode)
      normalColor = getColor(6);
   else if ((state & (sfSelected | sfActive)) == (sfSelected | sfActive))
      normalColor = getColor(1);
   else
      normalColor = getColor(2);

   short posColumn = 0;
   for (column = leftColumn; posColumn <= size.x; column++)
   {
      if (column < numColumns)
         thisWidth = *(columnWidth + column);
      else
         thisWidth = size.x - posColumn + 1;

      for (i = 0; i < size.y; i++)
      {
         row =  i + topRow;
         if (headingMode)
         {
            color = normalColor;
            scOff = 4;
         }
         else if ((state & (sfSelected | sfActive)) == (sfSelected | sfActive) &&
                focusedRow == row && focusedColumn == column &&
                numRows > 0)
         {
            color = focusedColor;
            setCursor(posColumn + 1, i);  // Move the hardware cursor.
            scOff = 0;
         }
         else if (column < numColumns && row < numRows &&
                   isSelected(column, row))
         {
            color = selectedColor;
            scOff = 2;
         }
         else
         {
            color = normalColor;
            scOff = 4;
         }

         b.moveChar(0, ' ', color, thisWidth);  // Clear draw buffer.
         if (column < numColumns && row < numRows)
         {
            char text[256];
            getText(text, column, row, thisWidth);
            char buf[256];
            memmove(buf, text, thisWidth);
            buf[thisWidth] = EOS;
            b.moveStr(1, buf, color);
            if (showMarkers)
            {
               b.putChar(0, specialChars[scOff]);
               b.putChar(thisWidth-2, specialChars[scOff+1]);
            }
         }
         else if (i == 0 && column == 0)
         {
            b.moveStr(1, "<empty>", getColor(1));
         }

         if (!headingMode && column < (numColumns - 1) && row < numRows)
            b.moveChar(thisWidth-1, (char) 179, getColor(5), 1);

         writeLine(posColumn, i, thisWidth, 1, b);
      }
      // Advance to the next column.
      posColumn += thisWidth;
   }

}


void TMatrixViewer::focusItem(short column, short row)
{

   focusedColumn = column;
   if (hScrollBar != 0)
        hScrollBar->setValue(column);
   if (column < leftColumn)
   {
      leftColumn = column;
   }
   else
   {
      while (getColumnPosition(column + 1) > size.x)
        leftColumn++;
   }

   focusedRow = row;
   if (vScrollBar != 0)
        vScrollBar->setValue(row);
   if (row < topRow)
   {
      topRow = row;
   }
   else
   {
      if (row >= topRow + size.y)
         topRow = row - size.y + 1;
   }

   (void) message(owner, evBroadcast, cmUpdateItemNumber, this);

}


void TMatrixViewer::focusItemNum(short column, short row)
{

   if (column < 0)
   {
      column = 0;
   }
   else
   {
      if (column >= numColumns)
         column = numColumns - 1;
   }

   if (row < 0)
   {
      row = 0;
   }
   else
   {
      if (row >= numRows && numRows > 0)
         row = numRows - 1;
   }

   if (numRows !=  0)
      focusItem(column, row);

}


TPalette& TMatrixViewer::getPalette() const
{
    static TPalette palette(cpMatrixViewer, sizeof(cpMatrixViewer)-1);
    return palette;
}


void TMatrixViewer::getText(char *dest, short, short, short)
{
    *dest = EOS;
}


Boolean TMatrixViewer::isSelected(short column, short row)
{
    return Boolean((column == focusedColumn) && (row == focusedRow));
}


void TMatrixViewer::handleEvent(TEvent& event)
{
   TPoint mouse;
   short  oldRow, newRow;
   short  oldColumn, newColumn;
   ushort count;
   int mouseAutosToSkip = 4;

   TView::handleEvent(event);

   newColumn = oldColumn = focusedColumn;
   newRow = oldRow = focusedRow;

   if (event.what == evMouseDown)
   {
      count = 0;
      do  {
         mouse = makeLocal(event.mouse.where);
         if (mouseInView(event.mouse.where))
         {
            for (newColumn = leftColumn;(newColumn < numColumns) &&
               (getColumnPosition(newColumn + 1) <= mouse.x); newColumn++) ;
            newRow = mouse.y + topRow;
         }
         else
         {
            if (event.what == evMouseAuto)
               count++;
            if (count == mouseAutosToSkip)
            {
               count = 0;
               if (mouse.x < 0)
               {
                  newColumn = focusedColumn - 1;
               }
               else
               {
                  if (mouse.x >= size.x)
                     newColumn = focusedColumn + 1;
               }
               if (mouse.y < 0)
               {
                  newRow = focusedRow - 1;
               }
               else
               {
                  if (mouse.y >= size.y)
                     newRow = focusedRow + 1;
               }
            }
         }
         if (newColumn != oldColumn || newRow != oldRow)
            focusItemNum(newColumn, newRow);
         oldColumn = newColumn;
         oldRow = newRow;
      } while (mouseEvent(event, evMouseMove | evMouseAuto));
      focusItemNum(newColumn, newRow);
      if ((event.mouse.eventFlags & meDoubleClick) && focusedColumn < numColumns &&
           focusedRow < numRows)
      {
         selectItem(focusedColumn, focusedRow);
      }
      clearEvent(event);
   }
   else if (event.what == evKeyDown)
   {
      if (event.keyDown.charScan.charCode ==  ' ' &&
           focusedColumn < numColumns && focusedRow < numRows)
      {
         selectItem(focusedColumn, focusedRow);
      }
      else
      {
         switch (ctrlToArrow(event.keyDown.keyCode))
         {
            case kbUp:
               newRow = oldRow - 1;
               break;
            case kbDown:
               newRow = oldRow + 1;
               break;
            case kbRight:
               newColumn = oldColumn + 1;
               break;
            case kbLeft:
               newColumn = oldColumn - 1;
               break;
            case kbPgDn:
               newRow = oldRow + size.y;
               break;
            case kbPgUp:
               newRow = oldRow - size.y;
               break;
            case kbHome:
               newRow = topRow;
               newColumn = leftColumn;
               break;
            case kbEnd:
               newRow = topRow + size.y - 1;
               for (newColumn = leftColumn; (newColumn < numColumns) &&
                  (getColumnPosition(newColumn + 1) <= size.x); newColumn++) ;
               break;
            case kbCtrlPgDn:
               newRow = numRows - 1;
               break;
            case kbCtrlPgUp:
               newRow = 0;
               break;
            case kbTab:
               newColumn = oldColumn + 1;
               if (newColumn >= numColumns)
               {
                 newRow = oldRow + 1;
                 if (newRow >= numRows)
                   newRow = 0;
                 newColumn = 0;
               }
               break;
            case kbShiftTab:
               if (oldColumn == 0)
               {
                 if (oldRow == 0)
                   oldRow = numRows;
                 newRow = oldRow - 1;
                 oldColumn = numColumns;
               }
               newColumn = oldColumn - 1;
               break;
            default:
               return;
         }
      }
      focusItemNum(newColumn, newRow);
      clearEvent(event);
   }
   else if (event.what == evBroadcast)
   {
      if ((options & ofSelectable) != 0)
      {
         if (event.message.command == cmScrollBarClicked &&
                  (event.message.infoPtr == hScrollBar ||
                    event.message.infoPtr == vScrollBar))
         {
            select();
         }
         else if (event.message.command == cmScrollBarChanged &&
                    (event.message.infoPtr == hScrollBar ||
                    event.message.infoPtr == vScrollBar))
         {
            short vVal = vScrollBar ? vScrollBar->value : 0;
            short hVal = hScrollBar ? hScrollBar->value : 0;
            focusItemNum(hVal, vVal);
            drawView();
         }
      }
   }

}


void TMatrixViewer::selectItem(short, short)
{
   (void) message(owner, evBroadcast, cmListItemSelected, this);
}


void TMatrixViewer::setRange(short aColumns, short aRows)
{

   numColumns = aColumns;
   if (hScrollBar != 0)
   {
      if (focusedColumn > aColumns)
         focusedColumn = 0;
      hScrollBar->setParams(focusedColumn, 0, aColumns - 1, hScrollBar->pgStep,
         hScrollBar->arStep);
   }

   numRows = aRows;
   if (vScrollBar != 0)
   {
      if (focusedRow > aRows)
         focusedRow = 0;
      vScrollBar->setParams(focusedRow, 0, aRows - 1, vScrollBar->pgStep,
         vScrollBar->arStep);
   }

}


void TMatrixViewer::setState(ushort aState, Boolean enable)
{

   TView::setState(aState, enable);
   if ((aState & (sfSelected | sfActive)) != 0)
   {
      if (hScrollBar != 0)
      {
         if (getState(sfActive))
            hScrollBar->show();
         else
            hScrollBar->hide();
      }
      if (vScrollBar != 0)
      {
         if (getState(sfActive))
            vScrollBar->show();
         else
            vScrollBar->hide();
      }
      drawView();
   }

}


short TMatrixViewer::getColumnPosition(short column)
{

   short position = 0;
   for (int i = leftColumn; i < numColumns; i++)
   {
      if (i == column)
         break;
      position += *(columnWidth + i);
   }
   return (position);

}


void TMatrixViewer::shutDown()
{

   hScrollBar = 0;
   vScrollBar = 0;
   TView::shutDown();

}


void TMatrixViewer::write(opstream& os)
{

   TView::write(os);
   os << hScrollBar << vScrollBar << topRow << focusedRow << numRows;

}


void *TMatrixViewer::read(ipstream& is)
{

   (void) TView::read(is);
   is >> hScrollBar >> vScrollBar >> topRow >> focusedRow >> numRows;
   return this;

}


TStreamable *TMatrixViewer::build()
{

   return new TMatrixViewer(streamableInit);

}


TMatrixViewer::TMatrixViewer(StreamableInit) : TView(streamableInit)
{
}



const int cmListKeyEnter		   = 59;


THeadingViewBox::THeadingViewBox(const TRect& bounds, TScrollBar *aHScroller,
   TScrollBar *aVScroller, const char **aListText, short aColumns, short aRows,
   ushort *aColumnWidth) :
   TMatrixViewer(bounds, aHScroller, aVScroller, aColumnWidth)
{

   ListText = aListText;
   setRange(aColumns, aRows);
   if (aHScroller != 0)
     aHScroller->maxVal = aColumns-1;
   if (aVScroller != 0)
     aVScroller->maxVal = aRows-1;
   headingMode = True;

}


void THeadingViewBox::getText(char *dest, short column, short row, short maxLen)
{

   sprintf(dest, "%*s", maxLen - 2, *(ListText + column + row * numColumns));

}




TListViewBox::TListViewBox(const TRect& bounds, TScrollBar *aHScroller,
   TScrollBar *aVScroller, ListRec *aListData, short aColumns,
   short aRows, ushort *aColumnWidth, ushort *aDecimalPoint) :
   TMatrixViewer(bounds, aHScroller, aVScroller, aColumnWidth)
{

   ListData = aListData;
   columnWidth = aColumnWidth;
   decimalPoint = aDecimalPoint;
   setRange(aColumns, aRows);
   if (aHScroller != 0)
      aHScroller->maxVal = aColumns-1;
   if (aVScroller != 0)
      aVScroller->maxVal = aRows-1;

}


TListViewBox::~TListViewBox()
{ }


void TListViewBox::getText(char *dest, short column, short row, short maxLen)
{
   ListRec *ptr;

   ptr = (ListData + column + row * numColumns);
   if (ptr->show)
      sprintf(dest, "%*.*lf", maxLen-2, *(decimalPoint + column), ptr->val);
   else
      *dest = EOS;

}


void TListViewBox::handleEvent(TEvent& event)
{

   if ((event.what == evMouseDown) && (event.mouse.eventFlags & meDoubleClick))
   {
      (void) message(owner, evBroadcast, cmListItemSelected, this);
      clearEvent(event);
   }
   if ((event.what == evKeyDown) && (event.keyDown.keyCode == kbEnter))
   {
      (void) message(owner, evBroadcast, cmListKeyEnter, this);
      clearEvent(event);
   }

  TMatrixViewer::handleEvent(event);

}


void TListViewBox::putData(void *rec)
{
   ListRec *ptr;
   char *txt;

   txt = (char *)rec;
   ptr = (ListData + focusedColumn + focusedRow * numColumns);
   while (isspace(*txt))
     strcpy(txt, txt + 1);
   if (*txt == EOS)
   {
      ptr->val = 0.0;
      ptr->show = False;
   }
   else
   {
      ptr->val = atof((char *)rec);
      ptr->show = True;
   }
   draw();

}





TListViewDialog::TListViewDialog(const TRect &trect, const char *aTitle, const char **aHeading,
   short aHeadRows, ListRec *aListData, short aColumns, short aRows,
   ushort *aColumnWidth, ushort *aDecimalPoint) :
   TDialog(trect, aTitle),
   TWindowInit(TDialog::initFrame)
{

   options |= ofCentered;

   // Calculate the list box width and height.
   const int maxStr = 30;

   // Create a rectangle for scroll box. */
   TRect r = TRect(1, 3, size.x - 2,
      size.y - 3);

   // Create a horizontal scroll bar for the list box.
   horzScroller = new TScrollBar(TRect(r.a.x, r.b.y,
      r.b.x, r.b.y + 1));

   // Create a vertical scroll bar for the list box.
   vertScroller = new TScrollBar(TRect(r.b.x, r.a.y,
      r.b.x + 1, r.b.y));

   // Create a scrolling heading box. */
   headingBox = new THeadingViewBox(TRect(r.a.x, r.a.y - aHeadRows,
      r.b.x, r.a.y), horzScroller, 0, aHeading, aColumns, aHeadRows,
      aColumnWidth);
   headingBox->growMode = gfGrowHiX;

   // Create a scroll box. */
   listBox = new TListViewBox(r, horzScroller, vertScroller, aListData,
      aColumns, aRows, aColumnWidth, aDecimalPoint);
   listBox->growMode = gfGrowHiX | gfGrowHiY;

   // Create the input line..
   inputLine = new TInputLine(TRect(r.a.x, r.a.y, r.a.x + *aColumnWidth - 1,
      r.a.y + 1), maxStr);
   inputLine->hide(); //hide input line

   // Create an (unselectable) box to hold the line number.
   itemNumber = new TInputLine(TRect(r.b.x - 7, r.b.y + 1,
      r.b.x - 1, r.b.y + 2), 5);
   itemNumber->options &= ~ofSelectable;
   itemNumber->growMode |= gfGrowAll;
   (void) itoa(listBox->focusedRow, itemNumber->data, 10);

   insert(horzScroller);
   insert(vertScroller);
   insert(headingBox);
   insert(listBox);
   insert(inputLine);
   insert(itemNumber);

}


void TListViewDialog::handleEvent(TEvent &event)
{

   switch(event.what)
   {
      case evMouseDown:  // clears input line
	 if (inputLine->state&sfSelected)
         {
	    inputLine->hide();
	 }
	 break;
      case evKeyDown:
	 switch(event.keyDown.keyCode)
	 {
	    case kbEsc:  // clears input line
	       if (inputLine->state & sfSelected)
               {
		  inputLine->hide();
		  clearEvent(event);
	       }
	       break;
	    case kbEnter: // saves input line to list box using listBoxPtr
	       if (inputLine->state & sfSelected)
               {
                  char work[256];
                  inputLine->getData(work);
                  listBoxPtr->putData(work);
		  inputLine->hide();
		  clearEvent(event);
	       }
	       break;
            default:
               break;
	 }
         break;
      case evBroadcast: // from List Boxes, infoPtr points to orginator
	 switch (event.message.command)
	 {
	    case cmListItemSelected: // if input line is already showing, hide it
	       if (inputLine->state & sfSelected)
               {
		  inputLine->hide();
		  clearEvent(event);
	       }
	       else   // show empty input line
               {
		  int mouseLocY =((TListViewBox *)event.message.infoPtr)->cursor.y;
                  int mouseLocX =((TListViewBox *)event.message.infoPtr)->cursor.x;
		  listBoxPtr =(TListViewBox *)event.message.infoPtr;
                  inputLine->growTo(*(listBoxPtr->columnWidth +
                     listBoxPtr->focusedColumn) - 1, 1);
		  inputLine->moveTo(mouseLocX, mouseLocY + 3);
		  strcpy(inputLine->data,"");
		  inputLine->show();
		  clearEvent(event);
	       }
	       break;
	    case cmListKeyEnter: // enter key pressed in list box, copy data to inputline
            {
	       int mouseLocY =((TListViewBox *)event.message.infoPtr)->cursor.y;
	       int mouseLocX =((TListViewBox *)event.message.infoPtr)->cursor.x;
	       listBoxPtr =(TListViewBox *)event.message.infoPtr;
	       inputLine->growTo(*(listBoxPtr->columnWidth +
                  listBoxPtr->focusedColumn) - 1, 1);
	       inputLine->moveTo(mouseLocX, mouseLocY + 3);
	       listBoxPtr->getText(inputLine->data,
                  listBoxPtr->focusedColumn, listBoxPtr->focusedRow,
                  inputLine->maxLen);
	       inputLine->show();
	       clearEvent(event);
	       break;
            }
	    case cmUpdateItemNumber:
               (void) itoa(listBox->focusedRow, itemNumber->data, 10);
               itemNumber->draw();
	       clearEvent(event);
	       break;
            default:
               break;
	 }
         break;
      default:
         break;
   }
   // Let TDialog handler do it's thing with any remaining events.
   TDialog::handleEvent(event);

}

