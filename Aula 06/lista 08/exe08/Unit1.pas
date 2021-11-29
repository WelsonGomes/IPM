unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Math;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btnGravar: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    xpmnfst1: TXPManifest;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aNumeros: array[1..10] of Double;
  iCont: Integer;
  iNumber: Double;

implementation

{$R *.dfm}

function calculocubo(iResul: Double; iNum: Integer): Double;
begin
  iResul:= Power(iNum, 3);
  result:= iResul;
end;


procedure TForm1.btnGravarClick(Sender: TObject);
begin
  iCont:= iCont + 1;
  aNumeros[iCont]:= calculocubo(iNumber, StrToInt(edt1.Text));
  lbl3.Caption:= lbl3.Caption + '   ' + edt1.Text;
  lbl5.Caption:= lbl5.Caption + '   ' + FloatToStr(aNumeros[iCont]);
  lbl1.Caption:= 'Digite o ' + IntToStr(iCont + 1) + 'º número';
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 10 then begin
    lbl1.Caption:= 'Terminado';
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnGravar.Enabled:= False;
  end;
end;



end.
