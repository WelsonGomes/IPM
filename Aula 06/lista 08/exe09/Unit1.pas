unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TForm1 = class(TForm)
    edtLoja: TEdit;
    edtPreco: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    btnGravar: TButton;
    xpmnfst1: TXPManifest;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aLoja: array[1..5] of string;
  aPreco: array[1..5] of Double;
  iCont, iIndice: Integer;
  dMenorPreco: Double;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  iCont:= iCont + 1;
  if StrToFloat(edtPreco.Text) < dMenorPreco then begin
    dMenorPreco:= StrToFloat(edtPreco.Text);
    iIndice:= iCont;
  end;

  aLoja[iCont]:= edtLoja.Text;
  aPreco[iCont]:= StrToFloat(edtPreco.Text);
  edtLoja.Clear;
  edtPreco.Clear;
  edtLoja.SetFocus;
  
  if iCont = 5 then begin
    edtLoja.Text:= 'Terminado';
    edtPreco.Text:= 'Terminado';
    edtLoja.Enabled:= False;
    edtPreco.Enabled:= False;
    btnGravar.Enabled:= False;
    lbl5.Caption:= aLoja[iIndice] + ' com o pre?o de R$ ' + FloatToStr(dMenorPreco);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dMenorPreco:= 1000000;
end;

end.
