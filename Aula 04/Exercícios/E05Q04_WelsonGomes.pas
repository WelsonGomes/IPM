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
  write('A �rea do triangulo � ',rArea:5:2);
End.