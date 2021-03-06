unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, XPMan;

type
  TForm1 = class(TForm)
    btnOk: TButton;
    edt1: TEdit;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    lbl1: TLabel;
    xpmnfst1: TXPManifest;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  Notas = array[0..3,0..2] of Double;
  Media = array[0..3] of Double;
var
  Form1: TForm1;
  aNotas: Notas;
  aMedia: Media;
  iLinha, iColuna: Integer;

implementation

{$R *.dfm}
function mediaAluno(aMediaNotas: Notas; var dMediaMedia: Media): Media;
var
  iLin, iCol: Integer;
begin
  for iLin:= 0 to 3 do begin
    for iCol:= 0 to 2 do begin
      dMediaMedia[iLin]:= dMediaMedia[iLin] + aMediaNotas[iLin][iCol];
    end;
    dMediaMedia[iLin]:= dMediaMedia[iLin] / iCol;
  end;
  Result:= dMediaMedia;
end;

procedure TForm1.btnOkClick(Sender: TObject);
begin
  aNotas[iLinha][iColuna]:= StrToFloat(edt1.Text);
  iColuna:= iColuna + 1;
  if iColuna = 3 then begin
    iColuna:= 0;
    iLinha:= iLinha + 1;
  end;
  lbl1.Caption:= 'Insira a ' + IntToStr(iColuna+1) + '? Nota do '+ IntToStr(iLinha+1) + '? Aluno';
  edt1.Clear;
  edt1.SetFocus;
  if iLinha = 4 then begin
    lbl1.Caption:= 'Terminado';
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnOk.Enabled:= False;
    aMedia:= mediaAluno(aNotas, aMedia);
    for iLinha:= Low(aNotas) to High(aNotas) do begin
      ds2.Append;
      for iColuna:= Low(aNotas[iLinha]) to High(aNotas[iColuna]) do begin
        ds2.Fields[iColuna].Value:= aNotas[iLinha][iColuna];
      end;
      ds2.Fields[iColuna].Value:= aMedia[iLinha];
      ds2.Post;
    end;
  end;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

end.
