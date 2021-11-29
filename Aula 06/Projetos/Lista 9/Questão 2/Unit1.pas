unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
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

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  aElementos: array [0..1, 0..2] of Integer;
  iVal, iA, iB : Integer;
begin
  iVal := StrToInt(edt7.Text);
  aElementos[0][0] := StrToInt(edt1.Text);
  aElementos[0][1] := StrToInt(edt2.Text);
  aElementos[0][2] := StrToInt(edt3.Text);
  aElementos[1][0] := StrToInt(edt4.Text);
  aElementos[1][1] := StrToInt(edt5.Text);
  aElementos[1][2] := StrToInt(edt6.Text);

  for iA := Low(aElementos) to High(aElementos) do
  begin
    ds2.Append;
    for iB := Low(aElementos[iA]) to High(aElementos[iA]) do
    begin
      ds2.Fields[iB].Value := aElementos[iA][iB] / iVal;
    end;
    ds2.Post;
  end;


// Exemplo inserção Grid
//  ds2.Append;
//  ds2.Fields[0].Value := 1;
//  ds2.Fields[1].Value := 2;
//  ds2.Fields[2].Value := 3;
//  ds2.Post;
end;

end.
