Program Pzim ;
var
	iA, iB, iC: integer;
Begin
	//Lendo a entrada dos numeros
  write('Digite o 1º número: '); 
	read(iA);
	write('Digite o 2º número: ');
	read(iB);
	write('Digite o 1º número: ');
	read(iC);
	Clrscr;
	//Verifica se a soma de A+B é maior que C
	if iA + iB > iC then
		write('A soma de ',iA,' + ',iB,' é maior que ',iC)
	//Verifica se a soma de A+B é menor que C
	else if iA + iB < iC then
		write('A soma de ',iA,' + ',iB,' é menor que ',iC)
	else
		write('A soma de ',iA,' + ',iB,' é igual a ',iC)
End.