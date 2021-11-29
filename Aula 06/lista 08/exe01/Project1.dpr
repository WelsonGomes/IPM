program Project1;

uses
  Forms,
  exe01 in '..\exe01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
