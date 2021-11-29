unit exe01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    xpmnfst1: TXPManifest;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btnValidar: TButton;
    mmoApresentar: TMemo;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnValidarClick(Sender: TObject);
var
  iNum: array[0..4] of Integer;
  iCont: Integer;
begin
  iNum[0]:= StrToInt(edt1.Text);
  iNum[1]:= StrToInt(edt2.Text);
  iNum[2]:= StrToInt(edt3.Text);
  iNum[3]:= StrToInt(edt4.Text);
  iNum[4]:= StrToInt(edt5.Text);

  for iCont:= Low(iNum) to High(iNum) do
    mmoApresentar.Lines.Add(IntToStr(iNum[iCont]));
end;

end.
