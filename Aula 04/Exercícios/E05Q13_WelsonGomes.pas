Program Pzim ;
var
	rCusto, rImpostos, rDistribuidor: real;
Begin
	//Lendo o custo da fabrica
	write('Digite o custo da fabrica para fabricação do carro: ');
	read(rCusto);
	Clrscr;
	//Calculando o valor do imposto pela produção do veiculo
	rImpostos:= rCusto / 100 * 45;
	//Calculando o valor da comissão do distribuidor do veiculo
	rDistribuidor:= (rCusto + rImpostos)/100 * 28;
	//Mostrando o custo do carro ao consumidor
	write('O custo do carro para o consumidor será de R$ ',rCusto + rImpostos + rDistribuidor:8:2)
End.