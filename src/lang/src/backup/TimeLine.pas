unit TimeLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvTFManager, JvTFDays, ExtCtrls, ImgList,
  JvTFMonths, JvTFGlance, JvTFWeeks, ComCtrls, StdCtrls, DBTables, DB;

type
  TFrame31 = class(TFrame)
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Splitter2: TSplitter;
    JvTFScheduleManager1: TJvTFScheduleManager;
    ImageList2: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    JvTFDays1: TJvTFDays;
    JvTFWeeks1: TJvTFWeeks;
    JvTFMonths1: TJvTFMonths;
    gbDates: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dtpFirstDate: TDateTimePicker;
    dtpSelDate: TDateTimePicker;
    edImageNo: TEdit;
    udImageNo: TUpDown;
    dtpImageDate: TDateTimePicker;
    btnAdd: TButton;
    TeamScheduleDatabase: TDatabase;
    Session1: TSession;
    Table1: TTable;
    procedure btnAddClick(Sender: TObject);
    procedure JvTFDays1DblClick(Sender: TObject);
  private
  public
    Appt : TJvTFAppt;
  end;

implementation

{$R *.dfm}

procedure TFrame31.btnAddClick(Sender: TObject);
var
  ApptStartDate, ApptEndDate : TDate;
  ApptStartTime, ApptEndTime : TTime;

  DaysGrid : TJvTFDays;
begin
  DaysGrid := JvTFDays1;
  Appt := JvTFDays1.ScheduleManager.dbNewAppt('');
  Appt.Persistent := True;

  with Appt do
  begin
    if DaysGrid.ValidSelection then
    begin
      ApptStartDate := DaysGrid.Cols[DaysGrid.SelStart.X].SchedDate;
      ApptEndDate   := DaysGrid.Cols[DaysGrid.SelEnd.X  ].SchedDate;

      ApptStartTime := DaysGrid.RowToTime (DaysGrid.SelStart.Y);
      ApptEndTime   := DaysGrid.RowEndTime(DaysGrid.SelEnd.Y  );
    end else
    begin
      ApptStartDate := Date;
      ApptEndDate   := Date;

      ApptStartTime := Time;
      ApptEndTime   := ApptStartTime +
                       EncodeTime(0, DaysGrid.Granularity - 1, 0, 0) +
                       EncodeTime(0, 1, 0, 0);
    End;

    Appt.BeginUpdate;
      SetStartEnd(ApptStartDate, ApptStartTime, ApptEndDate, ApptEndTime);
      AlarmEnabled := True;
      AlarmAdvance := 15;
    Appt.EndUpdate;
  end;
end;

procedure TFrame31.JvTFDays1DblClick(Sender: TObject);
var
  ap : TJvTFAppt;
  ac : TJvTFDaysCol;
begin
  ap := TJvTFAppt.Create(JvTFScheduleManager1,'lolo');

  ac := JvTFDays1.Cols.Add;
  ap := ac.GetFirstAppt;
  ap.SetStartEnd(Date,Time,Date+1,Time);

  //JvTFDays1.EditAppt(0,ap);
exit;
  with JvTFDays1 do
  begin
    if ValidSelection then
    begin
      if Assigned(SelAppt) Then
      begin
        if Assigned(JvTFDays1.SelAppt) then
        begin
        ShowMessage('1111');
          // Set EditAppt's Appt var to the selected appointment to
          // indicate that the appointment should be edited.
          Appt := JvTFDays1.SelAppt;
        end;
      end else
      begin
        MessageDlg('Please select an appointment to edit.',
        mtInformation,
        [mbOK],
        0);
      end;
    end else
    begin
      ShowMessage('enzuer');
    end;
  end;
end;

end.
