Program Pzim ;
var
	num1, num2, num3: integer;
Begin
	write('Digite o 1� n�mero: ');
	read(num1);
	Clrscr;
	write('Digite o 2� n�mero: ');
	read(num2);
	Clrscr;
	write('Digite o 3� n�mero: ');
	read(num3);
	Clrscr;
	if (num1 = num2) and (num1 = num3) then
  	write('N�meros iguais, nenhum � maior')
  else if num1 > num2 then begin
  	if num1 > num3 then
  		write('O n�mero ',num1,' � o maior n�mero')
  	else
  		write('O n�mero ',num2,' � o maior n�mero')
  end else if num2 > num3 then
  	write('O n�mero ',num2,' � o maior n�mero')
  else
  	write('O n�mero ',num3,' � o maior n�mero')
End.