unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    xpmnfst1: TXPManifest;
    btnGravar: TButton;
    edt1: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl6: TLabel;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aVetor1, aVetor2: array[1..10] of Integer;
  aVetor3: array[1..20] of Integer;
  iCont, iX, iJ: Integer;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  iCont:= iCont + 1;
  if iCont <= 10 then begin
    aVetor1[iCont]:= StrToInt(edt1.Text);
    if iCont = 10 then begin
      ShowMessage('Agora adicione os outros 10 números');
      lbl1.Caption:= 'Agora adicione os outros 10 números';
    end;
  end else
    aVetor2[iCont-10]:= StrToInt(edt1.Text);
    
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 20 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnGravar.Enabled:= False;
    iX:= 1;
    iJ:= 1;
    for iCont:= 1 to 20 do begin
      if iCont mod 2 = 0 then begin
        aVetor3[iCont]:= aVetor1[iX];
        iX:= iX + 1;
      end else begin
        aVetor3[iCont]:= aVetor2[iJ];
        iJ:= iJ + 1;
      end;
    end;
    for iCont:= 1 to 10 do begin
      lbl3.Caption:= lbl3.Caption + '   ' + IntToStr(aVetor1[iCont]);
      lbl5.Caption:= lbl5.Caption + '   ' + IntToStr(aVetor2[iCont]);
    end;
    for iCont:= 1 to 20 do
      lbl7.Caption:= lbl7.Caption + ' ' + IntToStr(aVetor3[iCont]);
      
  end;
end;

end.
