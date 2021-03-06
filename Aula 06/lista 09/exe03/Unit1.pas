unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    xpmnfst1: TXPManifest;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aMatriz1,aMatriz2,aMatriz3: array[0..1,0..2] of Double;
  iLin, iCol: Integer;
  sMostrar: string;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if iLin < 2 then begin
    aMatriz1[iLin][iCol]:= StrToFloat(edt1.Text);
    if (iLin = 1) and (iCol = 2) then begin
      ShowMessage('Insera agora os valores da 2? Matriz');
      lbl1.Caption:='Digite a 2? matriz';
    end;
  end else
    aMatriz2[iLin-2][iCol]:= StrToFloat(edt1.Text);
    
  iCol:= iCol + 1;
  if iCol = 3 then begin
    iCol:= 0;
    iLin:= iLin + 1;
  end;
  edt1.Clear;
  edt1.SetFocus;

  if iLin = 4 then begin
    edt1.Text:= 'Terminado';
    edt1.Enabled:= False;
    btn1.Enabled:= False;
    for iLin:= Low(aMatriz1) to High(aMatriz1) do begin
      ds2.Append;
      for iCol:= Low(aMatriz1[iLin]) to High(aMatriz1[iLin]) do begin
        aMatriz3[iLin][iCol]:= aMatriz1[iLin][iCol] + aMatriz2[iLin][iCol];
        ds2.Fields[iCol].Value:= aMatriz3[iLin][iCol]
      end;
      ds2.Post;
    end;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ds2.CreateDataSet;
end;

end.
