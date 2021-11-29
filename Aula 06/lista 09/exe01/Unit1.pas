unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, XPMan, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    xpmnfst1: TXPManifest;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aMatriz: array[0..1,0..2] of Double;
  iLin, iCol: Integer;
  dPositivo, dNegativo: Double;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  aMatriz[iLin][iCol]:= StrToFloat(edt1.Text);
  if aMatriz[iLin][iCol] >= 0 then begin
    dPositivo:= dPositivo + aMatriz[iLin][iCol];
  end else begin
    dNegativo:= dNegativo + aMatriz[iLin][iCol];
  end;

  iCol:= iCol + 1;
  if iCol = 3 then begin
    iCol:= 0;
    iLin:= iLin + 1;
  end;

  edt1.Clear;
  edt1.SetFocus;
  if iLin = 2 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btn1.Enabled:= False;
    for iLin:= low(aMatriz) to High(aMatriz) do begin
      ds2.Append;
      for iCol:= Low(aMatriz[iLin]) to High(aMatriz[iLin]) do begin
        ds2.Fields[iCol].Value:= aMatriz[iLin][iCol];
      end;
      ds2.Post;
    end;
    mmo1.Lines.Add('A soma dos números positivos é ' + FloatToStr(dPositivo));
    mmo1.Lines.Add('A soma dos números negativos é ' + FloatToStr(dNegativo));
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

end.
