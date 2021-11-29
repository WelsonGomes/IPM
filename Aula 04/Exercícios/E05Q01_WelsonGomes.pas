Program Pzim ;
var
	iNum1, iNum2: integer;
Begin
  write('Digite o 1º número: ');
  read(iNum1);
  write('Digite o 2º número: ');
  read(iNum2);
  Clrscr;
  if iNum1 > iNum2 then
		writeln('O maior número é ',iNum1)
	else if iNum2 > iNum1 then
		writeln('O maior número é ',iNum2)
	else
		writeln('Os números são iguais');
End.