program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iBase, iExpo,iExp: Integer;
function expoente(iB, iE: Integer): Integer;
var
  iPotencia, i: Integer;
begin
  iPotencia:= 1;
  for i:= 1 to iE do begin
    iPotencia:= iPotencia * iB
  end;
  Result:= iPotencia
end;

begin
  Write('Ditete a base: ');
  Readln(iBase);
  Write('Digite o expoente: ');
  Readln(iExpo);
  iExp:= expoente(iBase,iExpo);
  Write(iBase,' elevado a ',iExpo,' e igual a ',iExp);
  Readln;
end.


{
   4 x 4 x 4 x 4 x 4 = 1024
}