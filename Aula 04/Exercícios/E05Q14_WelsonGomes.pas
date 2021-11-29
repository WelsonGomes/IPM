Program Pzim ;
var
	rX1, rX2, rY1, rY2, rDis: real;
Begin
	//Declarando os valores das cordenadas
	rX1:= random(99);
	rY1:= random(99);
	rX2:= random(99);
	rY2:= random(99);
	
	//Calculando a distancia e exibindo na tela
	rDis:= sqrt((sqr(rX2-rX1)) + (sqr(rY2-rY1)));
	write('A distancia do ponto X1 ',rX1:4:2,', Y1 ',rY1:4:2,' para o ponto X2 ',rX2:4:2,', Y2 ',rY2:4:2,' é de ',rDis:6:2);
End.