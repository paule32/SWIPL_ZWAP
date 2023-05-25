// ***********************************************************************
//
//  SPRDVIEW.H
//	used with SPRDVIEW.CPP
//  List Viewer that displays/edits two-dimensional array
//  July 19, 1994
//  Curt Thompson
// ***********************************************************************

class TMatrixViewer : public TView
{

public:

  TMatrixViewer(const TRect& bounds, TScrollBar *aHScrollBar,
    TScrollBar *aVScrollBar, ushort *aColumnWidth);
  virtual void draw();
  virtual void focusItem(short column, short row);
  virtual TPalette& getPalette() const;
  virtual void getText(char *dest, short column, short row, short maxLen);
  virtual Boolean isSelected(short column, short row);
  virtual void handleEvent(TEvent& event);
  virtual void selectItem(short column, short row);
  void setRange(short aColumns, short aRows);
  virtual void setState(ushort aState, Boolean enable);
  virtual void focusItemNum(short column, short row);
  short getColumnPosition(short column);
  virtual void shutDown();

  TScrollBar *hScrollBar;
  TScrollBar *vScrollBar;
  short leftColumn;
  short topRow;
  short focusedColumn;
  short focusedRow;
  short numColumns;
  short numRows;
  Boolean headingMode;
  ushort *columnWidth;

private:

  virtual const char *streamableName() const
    { return name; }

protected:

  TMatrixViewer(StreamableInit);
  virtual void write(opstream&);
  virtual void *read(ipstream&);

public:

  static const char * const _NEAR name;
  static TStreamable *build();

};


class THeadingViewBox : public TMatrixViewer
{
public:
  THeadingViewBox(const TRect& bounds, TScrollBar *aHScroller,
     TScrollBar *aVScroller, const char **aListText, short aColumns,
     short aRows, ushort *aColumnWidth);
  virtual void getText(char *dest, short column, short row, short maxLen);

  const char **ListText;

};



typedef struct {
  double val;
  Boolean show;
} ListRec;

class TListViewBox : public TMatrixViewer
{
public:
  TListViewBox(const TRect& bounds, TScrollBar *aHScroller,
     TScrollBar *aVScroller, ListRec *aListData, short aColumns,
     short aRows, ushort *aColumnWidth, ushort *aDecimalPoint);
  ~TListViewBox();
  virtual void getText(char *dest, short column, short row, short maxLen);
  void handleEvent (TEvent& event);
  virtual void putData(void *rec);

  ListRec *ListData;
  ushort *decimalPoint;

};


class TListViewDialog : public TDialog {
  public:
    TListViewDialog(const TRect &trect, const char *aTitle, const char **aHeading,
      short aHeadRows, ListRec *aListData, short aColumns, short aRows,
      ushort *aColumnWidth, ushort *aDecimalPoint);
    ~TListViewDialog() { };
    void handleEvent(TEvent &);

  private:
    TScrollBar *horzScroller;
    TScrollBar *vertScroller;
    THeadingViewBox *headingBox;
    TListViewBox *listBox;
    TListViewBox *listBoxPtr;
    TInputLine *inputLine;
    TInputLine *itemNumber;

};

