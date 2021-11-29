Program Pzim ;
var
	sNome: string;
	rSal, rVendas, rSalario: real;
Begin
	//Lendo o nome do vendedor
	write('Digite o nome do vendedor: ');
	read(sNome);
	//Lendo o salario base do vendedor
	write('Digite o salário desse vendedor: ');
	read(rSal);
	//Lendo as vendas desse do vendedor
	write('Digite o valor total de vendas desse vendedor em R$: ');
	read(rVendas);
	Clrscr;
	//Calculando a comissão de vendas desse vendedor
	rSalario:= rVendas / 100 * 15;
	writeln('O vendedor ',sNome,' tem salário base de R$',rSal:6:2,', com suas vendas receberá R$',rSal+rSalario:6:2);
End.