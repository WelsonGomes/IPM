unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btnValidar: TButton;
    mmoApresentar: TMemo;
    xpmnfst1: TXPManifest;
    lbl1: TLabel;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iNum: array[0..4] of Integer;
  iCont: Integer;
implementation

{$R *.dfm}

procedure TForm1.btnValidarClick(Sender: TObject);

begin

  iNum[iCont]:= StrToInt(edt1.Text);
  mmoApresentar.Lines.Add(IntToStr(iNum[iCont]));
  iCont:= iCont + 1;
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 5 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnValidar.Enabled:= False;
  end;

end;

end.
