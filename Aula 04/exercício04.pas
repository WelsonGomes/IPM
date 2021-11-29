Program Pzim ;
var
	num, i, fat: integer;
Begin
	write('Digite um número inteiro: ');
	read(num);
	fat:= 1;
	for i:= num downto 1 do begin
		if i > 1 then
			write(i:4,' x')
		else
			write(' =');
			
		fat:= fat * i
	end;
	write(fat:5);
End.