Program Pzim ;
var
	num1, num2, num3: integer;
Begin
	write('Digite o 1º número: ');
	read(num1);
	Clrscr;
	write('Digite o 2º número: ');
	read(num2);
	Clrscr;
	write('Digite o 3º número: ');
	read(num3);
	Clrscr;
	if (num1 = num2) and (num1 = num3) then
  	write('Números iguais, nenhum é maior')
  else if num1 > num2 then begin
  	if num1 > num3 then
  		write('O número ',num1,' é o maior número')
  	else
  		write('O número ',num2,' é o maior número')
  end else if num2 > num3 then
  	write('O número ',num2,' é o maior número')
  else
  	write('O número ',num3,' é o maior número')
End.