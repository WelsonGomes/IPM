Program Pzim ;
var
	iNum1, iQuad, iCubo: integer;
	
Begin
	write('Digite um n�mero: ');
  read(iNum1);
  Clrscr;
  iQuad:= sqr(iNum1);
  iCubo:= iNum1 * iNum1 * iNum1;
  writeln(iNum1,' elevado ao quadrado � ',iQuad);
  writeln(iNum1,' elevado ao cubo � ',iCubo);
End.