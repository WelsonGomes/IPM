Program Pzim ;
var
	iA, iB, iC: integer;
Begin
	//Lendo a entrada dos numeros
  write('Digite o 1� n�mero: '); 
	read(iA);
	write('Digite o 2� n�mero: ');
	read(iB);
	write('Digite o 1� n�mero: ');
	read(iC);
	Clrscr;
	//Verifica se a soma de A+B � maior que C
	if iA + iB > iC then
		write('A soma de ',iA,' + ',iB,' � maior que ',iC)
	//Verifica se a soma de A+B � menor que C
	else if iA + iB < iC then
		write('A soma de ',iA,' + ',iB,' � menor que ',iC)
	else
		write('A soma de ',iA,' + ',iB,' � igual a ',iC)
End.