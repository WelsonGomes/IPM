Program Pzim ;
var
	iNum1, iNum2: integer;
Begin
  write('Digite o 1� n�mero: ');
  read(iNum1);
  write('Digite o 2� n�mero: ');
  read(iNum2);
  Clrscr;
  if iNum1 > iNum2 then
		writeln('O maior n�mero � ',iNum1)
	else if iNum2 > iNum1 then
		writeln('O maior n�mero � ',iNum2)
	else
		writeln('Os n�meros s�o iguais');
End.