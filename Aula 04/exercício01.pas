Program Pzim ;
var
	num: integer;
Begin
	write('Digite um n�mero: ');
	read(num);
	if num = 0 then
		writeln('Zero n�o � um n�mero invalido');
	if num > 0 then
		write(num,' � um n�mero � positivo')
	else
		write(num,' � um n�mero � negativo')
End.