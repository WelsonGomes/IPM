Program Pzim ;
var
	rNota1, rNota2, rMedia: real;
Begin
	//Leitura das notas
  write('Digite o 1� nota: ');    
	read(rNota1);
	write('Digite o 2� nota: ');      
	read(rNota2);
	Clrscr;
	//Calculo da m�dia do aluno
	rMedia:= (rNota1 + rNota2) / 2;
	//Verifica��o de aprovado ou reprovado
	if rMedia >= 5 then
		writeln('Aprovado')
	else
		writeln('Reprovado')
End.