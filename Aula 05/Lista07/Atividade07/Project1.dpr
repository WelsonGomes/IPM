program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iRendimento: Double;

function imposto(iRrf, iAliquita, iDeducao: Double): Double;
begin
  Result:= iRrf * iAliquita - iDeducao;
end;

procedure proImposto(iRrf: Double);
begin
  if iRrf <= 900 then
    Writeln('Nao ha Imposto para esse rendimento')
  else if iRrf <= 1800 then
    Writeln('O valor de imposto e de ',formatfloat('0.##',imposto(iRrf,0.15, 135)))
  else
    Writeln('O valor de imposto e de ',formatfloat('0.##',imposto(iRrf, 0.25, 315)));

  Readln;
end;

begin
  write('Digite o rendimento: ');
	read(iRendimento);
  proImposto(iRendimento);
  Readln;
end.
 