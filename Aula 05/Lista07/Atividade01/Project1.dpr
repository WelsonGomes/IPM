program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iNum1, iNum2, iIntervalo: Integer;

function intervalo(iN1, iN2: Integer): Integer;
var
  iInter: Integer;
begin
  if iN1 < iN2 then
    iInter:= iN2 - iN1
  else
    iInter:= iN1 - iN2;

  Result:= iInter;

end;

begin
  Write('Digite um numero: ');
  Readln(iNum1);
  Write('Digite um numero: ');
  Readln(iNum2);
  iIntervalo:= intervalo(iNum1, iNum2);
  Writeln('O numero de inteiros no intervalo entre ',iNum1,' e ',iNum2,' e ',iIntervalo);
  Readln;
end.
 