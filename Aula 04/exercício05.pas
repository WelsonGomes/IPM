Program Pzim ;
var
	num1, num2, i, soma: integer;
Begin
  write('Digite o 1� n�mero: ');
	read(num1);
	Clrscr;
	write('Digite o 2� n�mero: ');
	read(num2);
	for i:= 1 to num2 do begin
		soma:= soma + num1;
		if i < num2 then
			write(num1,' + ')
		else
			write(num1);
	end;	
	write(' = ',soma);
End.