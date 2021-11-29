unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, Math;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aMatrizA: array[0..2,0..2] of Double;
  aMatrizB: array[0..2,0..3] of Double;
  iLin, iCol, aux: Integer;
  dMedia: Double;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  for iLin:= Low(aMatrizA) to High(aMatrizA) do begin
    for iCol:= Low(aMatrizA[iLin]) to High(aMatrizA[iLin]) do begin
      aux:= RandomRange(10,99) * RandomRange(10,99) div RandomRange(10,50);
      aMatrizA[iLin][iCol]:= aux;
      aMatrizB[iLin][iCol]:= aMatrizA[iLin][iCol];
      dMedia:= dMedia + aMatrizB[iLin][iCol];
    end;
    dMedia:= dMedia / iCol;
    aMatrizB[iLin][iCol]:= dMedia;
  end;
  
  for iLin:= Low(aMatrizB) to High(aMatrizB) do begin
    ds2.Append;
    for iCol:= Low(aMatrizB[iLin]) to High(aMatrizB[iLin]) do begin
      ds2.Fields[iCol].Value:= aMatrizB[iLin][iCol];
    end;
    ds2.Post;
  end;
end;

end.
