// ----------------------------------------------
// THIS FILE IS CREATED AUTOMATICALLY
// (c) 2023 ResBuilder v1.0
// by paule32 - Jens Kallup - non-profit Software
// ----------------------------------------------
unit ResourceFiles;
interface
uses
  Windows, Classes, SysUtils, Dialogs,
  JvComponentBase, JvZlibMultiple,
  //
  RF_1, RF_2, RF_3, RF_4, RF_5, RF_6, RF_7,
  RF_8, RF_9, RF_10, RF_11, RF_12, RF_13, RF_14,
  RF_15, RF_16, RF_17, RF_18, RF_19, RF_20,
  RF_21, RF_22, RF_23, RF_24, RF_25, RF_26,
  RF_27, RF_28, RF_29, RF_30, RF_31, RF_32,
  RF_33, RF_34, RF_35, RF_36, RF_37, RF_38,
  RF_39, RF_40, RF_41, RF_42, RF_43, RF_44,
  RF_45, RF_46, RF_47, RF_48, RF_49, RF_50,
  RF_51, RF_52, RF_53, RF_54, RF_55, RF_56,
  RF_57, RF_58, RF_59, RF_60, RF_61, RF_62,
  RF_63, RF_64, RF_65, RF_66, RF_67, RF_68,
  RF_69, RF_70, RF_71, RF_72, RF_73, RF_74,
  RF_75, RF_76, RF_77, RF_78, RF_79, RF_80,
  RF_81, RF_82, RF_83, RF_84, RF_85, RF_86,
  RF_87, RF_88, RF_89, RF_90, RF_91, RF_92,
  RF_93, RF_94, RF_95, RF_96, RF_97, RF_98,
  RF_99, RF_100, RF_101, RF_102, RF_103, RF_104,
  RF_105;

type
  TRF_Package = class(TObject)
  public
    z: TJvZLibMultiple;

    procedure DeCompressBuffer;

    constructor Create; overload;
    destructor Destroy; override;
  end;

implementation

(*
var
  global_RF_CONST : Array[1..105] of TRF_CONST = (
    (name: 'TComboBox'; arrptr: @TByteArray_TComboBox; len: 211),
    (name: 'TEdit'; arrptr: @TByteArray_TComboBox; len: 574),
    (name: 'TImage'; arrptr: @TByteArray_TComboBox; len: 404),
    (name: 'amiga'; arrptr: @TByteArray_TComboBox; len: 6141),
    (name: 'auge'; arrptr: @TByteArray_TComboBox; len: 245),
    (name: 'basic'; arrptr: @TByteArray_TComboBox; len: 1727),
    (name: 'bold'; arrptr: @TByteArray_TComboBox; len: 549),
    (name: 'boldNormal'; arrptr: @TByteArray_TComboBox; len: 660),
    (name: 'btn_close'; arrptr: @TByteArray_TComboBox; len: 696),
    (name: 'button'; arrptr: @TByteArray_TComboBox; len: 530),
    (name: 'c64'; arrptr: @TByteArray_TComboBox; len: 919),
    (name: 'c642'; arrptr: @TByteArray_TComboBox; len: 4144),
    (name: 'c64datadrive'; arrptr: @TByteArray_TComboBox; len: 27245),
    (name: 'c64floppy'; arrptr: @TByteArray_TComboBox; len: 16966),
    (name: 'c64key1'; arrptr: @TByteArray_c64key1; len: 697),
    (name: 'c64key2'; arrptr: @TByteArray_c64key2; len: 979),
    (name: 'c64key3'; arrptr: @TByteArray_c64key3; len: 1042),
    (name: 'c64key4'; arrptr: @TByteArray_c64key4; len: 1145),
    (name: 'c64key5'; arrptr: @TByteArray_c64key5; len: 1228),
    (name: 'c64key6'; arrptr: @TByteArray_c64key6; len: 1213),
    (name: 'c64key7'; arrptr: @TByteArray_c64key7; len: 1300),
    (name: 'c64key8'; arrptr: @TByteArray_c64key8; len: 938),
    (name: 'c64key9'; arrptr: @TByteArray_c64key9; len: 1016),
    (name: 'c64key10'; arrptr: @TByteArray_c64key10; len: 1484),
    (name: 'c64key11'; arrptr: @TByteArray_c64key11; len: 1399),
    (name: 'c64key12'; arrptr: @TByteArray_c64key12; len: 935),
    (name: 'c64key13'; arrptr: @TByteArray_c64key13; len: 787),
    (name: 'c64key14'; arrptr: @TByteArray_c64key14; len: 1075),
    (name: 'c64key15'; arrptr: @TByteArray_c64key15; len: 1247),
    (name: 'c64key16'; arrptr: @TByteArray_c64key16; len: 1139),
    (name: 'c64key17'; arrptr: @TByteArray_c64key17; len: 1016),
    (name: 'c64key18'; arrptr: @TByteArray_c64key18; len: 1096),
    (name: 'c64key19'; arrptr: @TByteArray_c64key19; len: 1243),
    (name: 'c64key20'; arrptr: @TByteArray_c64key20; len: 852),
    (name: 'c64key21'; arrptr: @TByteArray_c64key21; len: 975),
    (name: 'c64key22'; arrptr: @TByteArray_c64key22; len: 781),
    (name: 'c64key23'; arrptr: @TByteArray_c64key23; len: 884),
    (name: 'c64key24'; arrptr: @TByteArray_c64key24; len: 956),
    (name: 'c64key25'; arrptr: @TByteArray_c64key25; len: 853),
    (name: 'c64key26'; arrptr: @TByteArray_c64key26; len: 1016),
    (name: 'c64key27'; arrptr: @TByteArray_c64key27; len: 934),
    (name: 'c64key28'; arrptr: @TByteArray_c64key28; len: 1182),
    (name: 'c64key29'; arrptr: @TByteArray_c64key29; len: 971),
    (name: 'c64key30'; arrptr: @TByteArray_c64key30; len: 750),
    (name: 'c64key31'; arrptr: @TByteArray_c64key31; len: 1190),
    (name: 'c64key32'; arrptr: @TByteArray_c64key32; len: 1342),
    (name: 'c64key33'; arrptr: @TByteArray_c64key33; len: 1459),
    (name: 'c64key34'; arrptr: @TByteArray_c64key34; len: 1111),
    (name: 'c64key35'; arrptr: @TByteArray_c64key35; len: 1125),
    (name: 'c64key36'; arrptr: @TByteArray_c64key36; len: 872),
    (name: 'c64key37'; arrptr: @TByteArray_c64key37; len: 765),
    (name: 'c64key38'; arrptr: @TByteArray_c64key38; len: 966),
    (name: 'c64key39'; arrptr: @TByteArray_c64key39; len: 774),
    (name: 'c64key40'; arrptr: @TByteArray_c64key40; len: 902),

//  (name: 'c64key41'; arrptr: @TByteArray_c64key41; len: ),

    (name: 'c64key42'; arrptr: @TByteArray_c64key42; len: 776),
    (name: 'c64key43'; arrptr: @TByteArray_c64key43; len: 627),
    (name: 'c64key44'; arrptr: @TByteArray_c64key44; len: 659),
    (name: 'c64key45'; arrptr: @TByteArray_c64key45; len: 544),
    (name: 'c64key46'; arrptr: @TByteArray_c64key46; len: 1174),
    (name: 'c64key47'; arrptr: @TByteArray_c64key47; len: 1097),
    (name: 'c64key48'; arrptr: @TByteArray_c64key48; len: 946),
    (name: 'c64key49'; arrptr: @TByteArray_c64key49; len: 1022),
    (name: 'c64key50'; arrptr: @TByteArray_c64key50; len: 1035),
    (name: 'c64key51'; arrptr: @TByteArray_c64key51; len: 904),
    (name: 'c64key52'; arrptr: @TByteArray_c64key52; len: 1081),
    (name: 'c64key53'; arrptr: @TByteArray_c64key53; len: 873),
    (name: 'c64key54'; arrptr: @TByteArray_c64key54; len: 1014),
    (name: 'c64key55'; arrptr: @TByteArray_c64key55; len: 1058),
    (name: 'c64key56'; arrptr: @TByteArray_c64key56; len: 728),
    (name: 'c64key57'; arrptr: @TByteArray_c64key57; len: 714),
    (name: 'c64key58'; arrptr: @TByteArray_c64key58; len: 823),
    (name: 'c64key59'; arrptr: @TByteArray_c64key59; len: 1211),
    (name: 'c64key60'; arrptr: @TByteArray_c64key60; len: 1210),

    (name: 'clip'; arrptr: @TByteArray_clip; len: 275),
    (name: 'datasette'; arrptr: @TByteArray_datasette; len: 4922),
    (name: 'dbase'; arrptr: @TByteArray_dbase; len: 3125),
    (name: 'deu'; arrptr: @TByteArray_deu; len: 571),
    (name: 'dosi'; arrptr: @TByteArray_dosi; len: 2123),
    (name: 'edit'; arrptr: @TByteArray_edit; len: 1444),
    (name: 'editfolder'; arrptr: @TByteArray_editfolder; len: 527),
    (name: 'file'; arrptr: @TByteArray_file; len: 1939),
    (name: 'floppydisk'; arrptr: @TByteArray_floppydisk; len: 5548),
    (name: 'folder'; arrptr: @TByteArray_folder; len: 722),
    (name: 'font'; arrptr: @TByteArray_font; len: 311),
    (name: 'frage'; arrptr: @TByteArray_frage; len: 2428),
    (name: 'greenfolder'; arrptr: @TByteArray_greenfolder; len: 1241),
    (name: 'keyboard'; arrptr: @TByteArray_keyboard; len: 58579),
    (name: 'left'; arrptr: @TByteArray_left; len: 1281),
    (name: 'linux'; arrptr: @TByteArray_linux; len: 2347),
    (name: 'msdos'; arrptr: @TByteArray_msdos; len: 1809),
    (name: 'new'; arrptr: @TByteArray_new; len: 546),
    (name: 'newdat'; arrptr: @TByteArray_newdat; len: 489),
    (name: 'pascal'; arrptr: @TByteArray_pascal; len: 4368),
    (name: 'right'; arrptr: @TByteArray_right; len: 1265),
    (name: 'run'; arrptr: @TByteArray_run; len: 404),
    (name: 'setup'; arrptr: @TByteArray_setup; len: 2708),
    (name: 'texti1'; arrptr: @TByteArray_texti1; len: 13651),
    (name: 'underline'; arrptr: @TByteArray_underline; len: 595),
    (name: 'underline2'; arrptr: @TByteArray_underline2; len: 514),
    (name: 'usa'; arrptr: @TByteArray_usa; len: 880),
    (name: 'user'; arrptr: @TByteArray_user; len: 1320),
    (name: 'win16'; arrptr: @TByteArray_win16; len: 1749),
    (name: 'win32'; arrptr: @TByteArray_win32; len: 1723),
    (name: 'windows'; arrptr: @TByteArray_windows; len: 2809),
    (name: 'winxp'; arrptr: @TByteArray_winxp; len: 4041)
  );
*)

constructor TRF_Package.Create;
begin
  inherited Create;
  try
    if not(DirectoryExists('temp')) then
    CreateDir('temp');
    z := TJvZLibMultiple.Create(nil);
  except
    on E: Exception do
    begin
      ShowMessage('Exception:' +
      #10 + E.ClassName        +
      #10 + E.Message);
    end;
  end;
end;

destructor TRF_Package.Destroy;
begin
  z.Free;
  inherited Destroy;
end;

// decompress bitmap files ..
procedure TRF_Package.DeCompressBuffer;
var
  MS: TMemoryStream;
  procedure write(X: Array of Byte);
  begin
    ms.WriteBuffer( X[0], Length(X)-1);
    DeleteFile      ('temp\res_01.bin');
    MS.SaveToFile   ('temp\res_01.bin');
    z.DecompressFile('temp\res_01.bin','temp',true);
  end;
begin
  MS := TMemoryStream.Create;
  try
    try
      write( TByteArray_TComboBox );
      write( TByteArray_TComboBox );
      write( TByteArray_TEdit );
      write( TByteArray_TImage );
      write( TByteArray_amiga );
      write( TByteArray_auge );
      write( TByteArray_basic );
      write( TByteArray_bold );
      write( TByteArray_boldNormal );
      write( TByteArray_btn_close_150 );
      write( TByteArray_button );
      write( TByteArray_c64 );
      write( TByteArray_c642 );
      write( TByteArray_c64datadrive );
      write( TByteArray_c64floppy );
      write( TByteArray_c64key1 );
      write( TByteArray_c64key2 );
      write( TByteArray_c64key3 );
      write( TByteArray_c64key4 );
      write( TByteArray_c64key5 );
      write( TByteArray_c64key6 );
      write( TByteArray_c64key7 );
      write( TByteArray_c64key8 );
      write( TByteArray_c64key9 );
      write( TByteArray_c64key10 );
      write( TByteArray_c64key11 );
      write( TByteArray_c64key12 );
      write( TByteArray_c64key13 );
      write( TByteArray_c64key14 );
      write( TByteArray_c64key15 );
      write( TByteArray_c64key16 );
      write( TByteArray_c64key17 );
      write( TByteArray_c64key18 );
      write( TByteArray_c64key19 );
      write( TByteArray_c64key20 );
      write( TByteArray_c64key21 );
      write( TByteArray_c64key22 );
      write( TByteArray_c64key23 );
      write( TByteArray_c64key24 );
      write( TByteArray_c64key25 );
      write( TByteArray_c64key26 );
      write( TByteArray_c64key27 );
      write( TByteArray_c64key28 );
      write( TByteArray_c64key29 );
      write( TByteArray_c64key30 );
      write( TByteArray_c64key31 );
      write( TByteArray_c64key32 );
      write( TByteArray_c64key33 );
      write( TByteArray_c64key34 );
      write( TByteArray_c64key35 );
      write( TByteArray_c64key36 );
      write( TByteArray_c64key37 );
      write( TByteArray_c64key38 );
      write( TByteArray_c64key39 );
      write( TByteArray_c64key40 );

      write( TByteArray_c64key42 );
      write( TByteArray_c64key43 );
      write( TByteArray_c64key44 );
      write( TByteArray_c64key45 );
      write( TByteArray_c64key46 );
      write( TByteArray_c64key47 );
      write( TByteArray_c64key48 );
      write( TByteArray_c64key49 );
      write( TByteArray_c64key50 );
      write( TByteArray_c64key51 );
      write( TByteArray_c64key52 );
      write( TByteArray_c64key53 );
      write( TByteArray_c64key54 );
      write( TByteArray_c64key55 );
      write( TByteArray_c64key56 );
      write( TByteArray_c64key57 );
      write( TByteArray_c64key58 );
      write( TByteArray_c64key59 );
      write( TByteArray_c64key60 );

      write( TByteArray_clip );
      write( TByteArray_datasette );
      write( TByteArray_dbase );
      write( TByteArray_deu );
      write( TByteArray_dosi );
      write( TByteArray_edit );
      write( TByteArray_editfolder );
      write( TByteArray_file );
      write( TByteArray_floppydisk );
      write( TByteArray_folder );
      write( TByteArray_font );
      write( TByteArray_frage );
      write( TByteArray_greenfolder );
      write( TByteArray_keyboard );
      write( TByteArray_left );
      write( TByteArray_linux );
      write( TByteArray_msdos );
      write( TByteArray_new );
      write( TByteArray_newdat );
      write( TByteArray_pascal );
      write( TByteArray_right );
      write( TByteArray_run );
      write( TByteArray_setup );
      write( TByteArray_texti1 );
      write( TByteArray_underline );
      write( TByteArray_underline2 );
      write( TByteArray_usa );
      write( TByteArray_user );
      write( TByteArray_win16 );
      write( TByteArray_win32 );
      write( TByteArray_windows );
      write( TByteArray_winxp );
    except
      on E: Exception do
      begin
        ShowMessage('Exception:' +
        #10 + E.ClassName        +
        #10 + E.Message);
        MS.Clear;
        MS.Free;
        exit;
      end;
    end;
  finally
    MS.Clear;
    MS.Free;
  end;
end;

end.

