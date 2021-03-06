unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Math, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    xpmnfst1: TXPManifest;
    btnGerarMatriz: TButton;
    edt1: TEdit;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ds2: TClientDataSet;
    procedure btnGerarMatrizClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  aMatriz: array[0..9,0..9] of Integer;
  iLin, iCol, iMenor, iPosLin, iPosCol, aux, aux2: Integer;
  sMostrar: string;

implementation

{$R *.dfm}

procedure TForm1.btnGerarMatrizClick(Sender: TObject);
begin
  mmo1.Clear;
  if edt1.Text = '' then begin
    ShowMessage('? obrigat?rio informar o tamanho da matriz');
  end else begin
    for iLin:= 0 to StrToInt(edt1.Text)-1 do begin
      for iCol:= 0 to StrToInt(edt1.Text)-1 do begin
        aux:= RandomRange(10,50) * RandomRange(2,5);


        aMatriz[iLin][iCol]:= aux;
        if aMatriz[iLin][iCol] < iMenor then begin
          iMenor:= aMatriz[iLin][iCol];
          iPosLin:= iLin;
          iPosCol:= iCol;
        end;
      end;
    end;

    for iLin:= 0 to StrToInt(edt1.Text)-1 do begin
      ds2.Append;
      for iCol:= 0 to StrToInt(edt1.Text)-1 do begin
        ds2.Fields[iCol].Value:= aMatriz[iLin][iCol];
      end;
      ds2.Post;
    end;
    edt1.Clear;
    mmo1.Clear;
  end;
  mmo1.Lines.Add('');
  mmo1.Lines.Add('O menor elemento da matriz ? '+ IntToStr(iMenor));
  mmo1.Lines.Add('O menor elemento da matriz est? na posi??o: LINHA '+ IntToStr(iPosLin) + ' COLUNA '+ IntToStr(iPosCol));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  iMenor:= 99;
  ds2.CreateDataSet;
end;

end.
