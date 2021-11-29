unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btnGravar: TButton;
    xpmnfst1: TXPManifest;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aVetor1: array[1..5] of Integer;
  aVetor2: array[1..5] of Integer;
  iCont, iX, iJ: Integer;

implementation

{$R *.dfm}


procedure TForm1.btnGravarClick(Sender: TObject);
begin
  iCont:= iCont + 1;
  aVetor1[iCont]:= StrToInt(edt1.Text);
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 5 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnGravar.Enabled:= False;
    iJ:= 5;
    for iX:= 1 to 5 do begin
      aVetor2[iX]:= aVetor1[iJ];
      iJ:= iJ - 1;
      lbl4.Caption:= lbl4.Caption + '    ' + IntToStr(aVetor1[iX]);
      lbl5.Caption:= lbl5.Caption + '    ' + IntToStr(aVetor2[iX]);
    end;
  end;
end;

end.
