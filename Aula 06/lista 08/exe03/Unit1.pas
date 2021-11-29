unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Math;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    xpmnfst1: TXPManifest;
    btnVerificar: TButton;
    lblVetor: TLabel;
    lblNumero: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aNumeros: array[1..10] of Integer;
  iX, iAchou: Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
  for iX:= 1 to 10 do
    aNumeros[iX]:= RandomRange(1, 99);
end;



procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  iX:= 1;
  iAchou:= 0;
  while iX <= 10 do begin
    if (StrToInt(edt1.Text)) = aNumeros[iX] then begin
      iAchou:= iX;
      iX:= 10;
    end;
    iX:= iX + 1;
  end;

  for iX:= 1 to 10 do
    lblVetor.Caption:= lblVetor.Caption + '   ' + (IntToStr(aNumeros[iX]));

  if iAchou > 1 then begin
    lblNumero.Caption:= 'Número encontrado na posição ' + (IntToStr(iAchou));
    edt1.Enabled:= False;
    btnVerificar.Enabled:= False;
  end else begin
    lblNumero.Caption:= 'Número não encontrado no vetor';
    edt1.Enabled:= False;
    btnVerificar.Enabled:= False;
  end;
end;

end.
