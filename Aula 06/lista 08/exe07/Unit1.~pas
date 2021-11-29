unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    btnGravar: TButton;
    xpmnfst1: TXPManifest;
    edt1: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aIdades: array [1..10] of Integer;
  dMedia: Double;
  iX, iCont: Integer;

implementation

{$R *.dfm}
procedure media(var dMediaIdade: Double);
begin
  dMediaIdade:= dMediaIdade / 10;
end;


procedure TForm1.btnGravarClick(Sender: TObject);
begin
  iCont:= iCont + 1;
  aIdades[iCont]:= StrToInt(edt1.Text);
  dMedia:= dMedia + aIdades[iCont];
  lbl1.Caption:='Digite a ' + IntToStr(iCont + 1) + 'º idade';
  edt1.Clear;
  edt1.SetFocus;
  if iCont = 10 then begin
    lbl1.Caption:= 'Terminado';
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnGravar.Enabled:= False;
    media(dMedia);
    lbl5.Caption:= FloatToStr(dMedia);
    for iX:= 1 to 10 do begin
      lbl3.Caption:= lbl3.Caption + '   ' + IntToStr(aIdades[iX]);
      if aIdades[iX] > dMedia then
        lbl7.Caption:= lbl7.Caption + '   ' + IntToStr(aIdades[iX]);
    end;
  end;
end;

end.
