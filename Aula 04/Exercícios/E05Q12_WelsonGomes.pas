Program Pzim ;
var
	sNome: string;
	rSal, rVendas, rSalario: real;
Begin
	//Lendo o nome do vendedor
	write('Digite o nome do vendedor: ');
	read(sNome);
	//Lendo o salario base do vendedor
	write('Digite o sal�rio desse vendedor: ');
	read(rSal);
	//Lendo as vendas desse do vendedor
	write('Digite o valor total de vendas desse vendedor em R$: ');
	read(rVendas);
	Clrscr;
	//Calculando a comiss�o de vendas desse vendedor
	rSalario:= rVendas / 100 * 15;
	writeln('O vendedor ',sNome,' tem sal�rio base de R$',rSal:6:2,', com suas vendas receber� R$',rSal+rSalario:6:2);
End.