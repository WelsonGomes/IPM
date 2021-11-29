Program Pzim ;
var
	anos, meses, dias: integer;
Begin
  write('Digite sua idade em anos: ');
	read(anos);
	Clrscr;
	write('Digite sua idade em meses: ');
	read(meses);
	Clrscr;
	write('Digite sua idade em dias: ');
	read(dias);
	Clrscr;
	dias:= dias + (meses*30) + (anos*365);
	write('Sua idade em dias é ',dias,' dias de idade');
End.