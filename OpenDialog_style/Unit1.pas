////////////////////////////////////////////////////////////////////////////////
//
//  ****************************************************************************
//  * Unit Name : Unit1
//  * Purpose   : Демо открытия OpenDialog-а с автоматически выставленным стилем
//  * Author    : Александр (Rouse_) Багель
//  * Version   : 1.00
//  * Home Page : http://rouse.drkb.ru
//  ****************************************************************************
//

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure OpenDialog1Show(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  DLGStyle: Integer;

const
    ODM_VIEW_ICONS  = $7029;
    ODM_VIEW_LIST   = $702b;
    ODM_VIEW_DETAIL = $702c;
    ODM_VIEW_THUMBS = $702d;
    ODM_VIEW_TILES  = $702e;

  DlgStyles: array [0..4] of Integer =
    (ODM_VIEW_ICONS,
    ODM_VIEW_LIST,
    ODM_VIEW_DETAIL,
    ODM_VIEW_THUMBS,
    ODM_VIEW_TILES);

function NewOpenDlgProc(Wnd: HWND; uMsg: DWORD;
  WParam, LParam:integer): Integer; stdcall;
var
  ShellHandle: THandle;
begin
  if uMsg = WM_SHOWWINDOW then
  begin
    ShellHandle := FindWindowEx(Wnd, 0, 'SHELLDLL_DefView', nil);
    SendMessage(ShellHandle, WM_COMMAND, DLGStyle, 0);
  end;
  Result := CallWindowProc(Pointer(GetWindowLong(Wnd, GWL_USERDATA)), Wnd, uMsg, WParam, LParam);
end;

procedure TForm1.OpenDialog1Show(Sender: TObject);
begin
 SetWindowLong(GetParent(OpenDialog1.Handle), GWL_USERDATA,
   SetWindowLong(GetParent(OpenDialog1.Handle), DWL_DLGPROC, DWORD(@NewOpenDlgProc)));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DLGStyle := DLGStyles[TComponent(Sender).Tag];
  OpenDialog1.Execute;
end;

end.
