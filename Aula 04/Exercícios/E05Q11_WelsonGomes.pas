Program Pzim ;
var
	iNum1, iNum2: integer;
Begin
	write('Digite o 1� n�mero: ');
	read(iNum1);
	write('Digite o 2� n�mero: ');
	read(iNum2);
	Clrscr;
	if (iNum1 = 0) or (iNum2 = 0) then
		write('Numero zero � um n�mero invalido')
	else
		writeln('SOMA ':14, iNum1,' + ',iNum2,' = ',iNum1 + iNum2);
		writeln('SUBTRA��O ':14, iNum1,' - ',iNum2,' = ',iNum1 - iNum2);
		writeln('DIVIS�O ':14, iNum1,' / ',iNum2,' = ',iNum1 / iNum2);
		writeln('MULTIPLICA��O ', iNum1,' x ',iNum2,' = ',iNum1 * iNum2);
End.