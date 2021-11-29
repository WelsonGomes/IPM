Program Pzim ;
var
	num: integer;
Begin
	write('Digite um número: ');
	read(num);
	if num = 0 then
		writeln('Zero não é um número invalido');
	if num > 0 then
		write(num,' é um número é positivo')
	else
		write(num,' é um número é negativo')
End.