Program Pzim ;
var
	iNum1, iNum2: integer;
Begin
	write('Digite o 1º número: ');
	read(iNum1);
	write('Digite o 2º número: ');
	read(iNum2);
	Clrscr;
	if (iNum1 = 0) or (iNum2 = 0) then
		write('Numero zero é um número invalido')
	else
		writeln('SOMA ':14, iNum1,' + ',iNum2,' = ',iNum1 + iNum2);
		writeln('SUBTRAÇÃO ':14, iNum1,' - ',iNum2,' = ',iNum1 - iNum2);
		writeln('DIVISÃO ':14, iNum1,' / ',iNum2,' = ',iNum1 / iNum2);
		writeln('MULTIPLICAÇÃO ', iNum1,' x ',iNum2,' = ',iNum1 * iNum2);
End.