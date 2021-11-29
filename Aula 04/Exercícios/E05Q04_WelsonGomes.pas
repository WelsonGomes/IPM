Program Pzim ;
var
	rBase, rAltura, rArea: real;
Begin
	write('Digite a base: ');
  read(rBase);
  write('Digite a altura: ');
  read(rAltura);
  Clrscr;
  rArea:= (rBase * rAltura)/2;
  write('A área do triangulo é ',rArea:5:2);
End.