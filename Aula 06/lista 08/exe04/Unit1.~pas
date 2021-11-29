unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Math;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btnVerificar: TButton;
    xpmnfst1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aVetorLetra: array[1..10] of Char;
  iAchou, iX, iSequ: Integer;

const
  str1 = 'abcdefghijklmnopqrstuvwxyz';
  letra = 'a';

implementation

{$R *.dfm}

procedure letrasAleatoria();

begin
  for iX := 1 to 10 do begin
    iSequ:= RandomRange(1,2);
    aVetorLetra[iX]:= str1[Random(Length(str1)) + iSequ]
  end;
end;

procedure acharLetra(cLetra: Char; var iAchouAqui: Integer);

begin
  for iX:= 1 to 10 do begin
    if aVetorLetra[iX] = cLetra then
       iAchouAqui:= iAchouAqui + 1;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);

begin
  iAchou:= 0;
  letrasAleatoria;
  acharLetra(letra, iAchou);

  for iX:= 1 to 10 do begin
     if iX = 1 then
        lbl1.Caption:= '  ' + aVetorLetra[iX]
     else
        lbl1.Caption:= lbl1.Caption + '    ' + aVetorLetra[iX];
  end;

  if iAchou > 0 then
     lbl2.Caption:= 'Letra ' + letra + ' aparece ' + IntToStr(iAchou) + ' vezes.'
  else
     lbl2.Caption:= 'Letra ' + letra + ' não consta no vetor'
end;

procedure TForm1.btnVerificarClick(Sender: TObject);

begin
  iAchou:= 0;
  letrasAleatoria;
  acharLetra(letra, iAchou);

  for iX:= 1 to 10 do begin
     if iX = 1 then
        lbl1.Caption:= '  ' + aVetorLetra[iX]
     else
        lbl1.Caption:= lbl1.Caption + '    ' + aVetorLetra[iX];
  end;

  if iAchou > 0 then
     lbl2.Caption:= 'Letra ' + letra + ' aparece ' + IntToStr(iAchou) + ' vezes.'
  else
     lbl2.Caption:= 'Letra ' + letra + ' não consta no vetor'
end;

end.
