Program Pzim ;
var
	eleitores, v_validos, v_brancos, v_nulos, t_validos, t_brancos, t_nulos: real;
Begin
  write('Digite o n�mero de eleitores: ');
	read(eleitores);
	Clrscr;
	write('Digite o n�mero de votos v�lidos: ');
	read(v_validos);
	Clrscr;
	write('Digite o n�mero de votos em branco: ');
	read(v_brancos);
	Clrscr;
	write('Digite o n�mero de votos nulos: ');
	read(v_nulos);
	Clrscr;
	t_validos:= (v_validos / eleitores) * 100;
	t_brancos:= (v_brancos / eleitores) * 100;
	t_nulos:= (v_nulos / eleitores) * 100;
	writeln(t_validos:4:2,'% ','de votos v�lidos');
	writeln(t_brancos:4:2,'% ','de votos em branco');
	writeln(t_nulos:4:2,'% ','de votos nulos');
End.