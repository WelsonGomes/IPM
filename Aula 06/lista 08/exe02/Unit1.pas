unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    xpmnfst1: TXPManifest;
    lbl1: TLabel;
    btnOK: TButton;
    mmo1: TMemo;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iNum: array[1..10] of Double;
  iCont, iX: Integer;

implementation

{$R *.dfm}

procedure TForm1.btnOKClick(Sender: TObject);

begin
  iCont:= iCont + 1;
  iNum[iCont]:= StrToFloat(edt1.Text);
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 10 then begin
    edt1.Text:='Preencimento Terminado';
    edt1.Enabled:= False;
    btnOK.Enabled:= False;
    for iX:= 10 downto 1 do
      mmo1.Lines.Add((IntToStr(iX)) + '?: ' + (FloatToStr(iNum[iX])));
  end;
end;

end.
