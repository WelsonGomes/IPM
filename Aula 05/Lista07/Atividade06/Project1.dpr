program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  dR, PI, iArea: Double;

function area(iRaio, iPI: Double):Double;
var
   dA: Double;
begin
  dA:= (iPI * (iRaio * iRaio));
  Result:= dA;
end;

begin
  PI:= 3.14159;
  Write('Digite o raio: ');
  Readln(dR);
  while dR > 0 do begin
    iArea:= area(dR, PI);
    Writeln('Primeira �rea: ',formatfloat('0.##',iArea));
    Write('Digite o raio: ');
    Readln(dR);
  end;
  Writeln('Programa encerrado.');
  Readln;
end.
