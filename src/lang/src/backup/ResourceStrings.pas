// -------------------------------------------------------------------
// File:    ResourceStrings.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit ResourceStrings;

interface

// -------------------------------------------------------------
// rs_xxx are the Locale's .ENU, .DEU files. default is: ENU ...
// -------------------------------------------------------------
resourcestring
  rs_Internal_Error    = 'internal error.';

  rs_DNS_download_Error  = 'Could not set configs for DNS download.';
  rs_no_DatabaseSelected = 'no database selected.';
  
  rs_IB_notInstalled    = 'No InterBase installation found !';
  rs_BDE_notInstalled   = 'No BDE Installation found !';
  rs_BDE_Error          = 'BDE Error:';
  rs_BDE_AppStart_Rej   = 'Aborted start.';
  rs_App_First_Run      = 'You run this Application at first race !' + #13#10 +
                          'Would You do a Setup of needed Stuff ?';
  rs_App_User_Mode      = 'You run this Application with User rights !'      + #13#10 +
                          'If You confirm this Dialog with "Yes", it can be' + #13#10 +
                          'that the Application does not work.'              + #13#10 +
                          '' + #13#10 +
                          'Would You start the Application without Admin rights ?';
  rs_ClassName          = 'Class-Name: ';
  rs_Message            = 'Message: ';
  rs_Exception_Error    = 'Exception Error:';
  rs_File_Exists        = 'The file already exists !' + #13#10  +
                          'Would you override the old Version ?';

  rs_BDE_EClassName     = 'Error-Class: ';
  rs_BDE_ECode          = 'Error-Code: ';
  rs_BDE_EMessage       = 'Error-Message: ';
  rs_BDE_EFile          = 'Error-File: ';
  rs_BDE_EModule        = 'Error-Module: ';
  rs_BDE_EProc          = 'Error-Proc: ';
  rs_BDE_ELine          = 'Error-Line: ';

  rs_BDE_Error_TableDontExists = 'Table does not exists.';
  rs_Win32_Registry_Error      = 'Win32-Registry Error:';

implementation

end.
