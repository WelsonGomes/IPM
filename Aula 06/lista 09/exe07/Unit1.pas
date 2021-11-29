unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    btnOk: TButton;
    edt1: TEdit;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  Notas: array[0..3,0..2] of Double;
  Media: array[0..3] of Double;
var
  Form1: TForm1;
  aNotas: Notas;
  aMedia: Media;
  iLinha, iColuna: Integer;

implementation

{$R *.dfm}
function mediaAluno(mediaNotas: Notas; var mediaMedia: Media): Media;
begin
  for i:= 0 to 3 do begin
    for x:= 0 to 2 do begin
      mediaMedia[i]:= mediaMedia[i] + mediaNotas[i][x];
    end;
    mediaMedia[i]:= mediaMedia[i] / x;
  end;
  Result:= mediaMedia;
end;

procedure TForm1.btnOkClick(Sender: TObject);
begin
  aNotas[iLinha][iColuna]:= StrToFloat(edt1.Text);
  iColuna:= iColuna + 1;
  if iColuna = 3 then begin
    iColuna:= 0;
    iLinha:= iLinha + 1;
  end;

  if iLinha = 4 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btnOk.Enabled:= False;
    for iLinha:= Low(aNotas) to High(aNotas) do begin
      ds
    end;
  end;
end;

end.
 