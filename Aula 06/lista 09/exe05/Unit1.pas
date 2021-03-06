unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Grids, DBGrids, DB, DBClient;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btnGravar: TButton;
    xpmnfst1: TXPManifest;
    ds1: TDataSource;
    ds2: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  Notas = array[0..2,0..2] of Double;
  Alunos = array[0..2] of string;
var
  Form1: TForm1;
  aNotas: Notas;
  aAlunos: Alunos;
  iLin, iCol: Integer;
  dMedia: Double;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

function media(var dMed: Double): Double;
var
  iX, iY: Integer;
begin
  dMed:= dMed / 2;
  Result:= dMed;
end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  if aAlunos[1] = '' then begin
    for iLin:= 0 to 2 do begin
      aAlunos[iLin]:= 'Aluno ' + IntToStr(iLin);
    end;
    iLin:= 0;
    iCol:= 0;
  end;

  aNotas[iLin][iCol]:= StrToFloat(edt1.Text);
  dMedia:= dMedia + aNotas[iLin][iCol];
  iCol:= iCol + 1;
  if iCol >= 2 then begin
    aNotas[iLin][iCol]:= media(dMedia);
    iCol:= 0;
    iLin:= iLin + 1;
    dMedia:= 0;
  end;
  lbl1.Caption:= 'Digite a ' + IntToStr(iCol+1) +'? Nota do ' + IntToStr(iLin+1) + '? Aluno';
  edt1.Clear;
  edt1.SetFocus;
  if iLin >= 3 then begin
    lbl1.Caption:= 'Terminado';
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnGravar.Enabled:= False;
    for iLin:= 0 to 2 do begin
      ds2.Append;
      for iCol:= 0 to 2 do begin
        if iCol = 0 then begin
          ds2.Fields[iCol].Value:= aAlunos[iLin];
          ds2.Fields[iCol+1].Value:= aNotas[iLin][iCol];
        end else
          ds2.Fields[iCol+1].Value:= aNotas[iLin][iCol];
      end;
      ds2.Post;
    end;
  end;
end;

end.
