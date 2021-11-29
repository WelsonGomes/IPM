unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    mmo1: TMemo;
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

procedure TForm1.btn1Click(Sender: TObject);
var
  aNumeros: array [0..4] of integer;
  iIndice : Integer;
begin
  aNumeros[0] := StrToInt(edt1.Text);
  aNumeros[1] := StrToInt(edt2.Text);
  aNumeros[2] := StrToInt(edt3.Text);
  aNumeros[3] := StrToInt(edt4.Text);
  aNumeros[4] := StrToInt(edt5.Text);
  for iIndice := Low(aNumeros) to High(aNumeros) do
    mmo1.Lines.Add(IntToStr(aNumeros[iIndice]));
end;

end.
