Program Pzim ;
var
	cLetra: char;
Begin
  write('Digite uma letra: ');
	read(cLetra);
	cLetra:= Upcase(cLetra);
	if (cLetra = 'A') or (cLetra = 'E') or (cLetra = 'I') or (cLetra = 'O') or (cLetra = 'U') then
		write('A letra ',cLetra,' é uma vogal')
	else
	  write('A letra ',cLetra,' não é uma vogal')
End.