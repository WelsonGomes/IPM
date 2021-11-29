Program Pzim ;
var
	iNum1, iNum2, iNum3: integer;
Begin
  write('Digite o 1º número: ');      //10   10    20   20    30    30
	read(iNum1);
	write('Digite o 2º número: ');      //20   30    10   30    10    20
	read(iNum2);
	write('Digite o 1º número: ');      //30   20    30   10    20    10
	read(iNum3);
	Clrscr;
	//Verifica se o 1º é menor que o 2º
	if iNum1 < iNum2 then begin
		//Verifica se o 2º é menor que o 3º
		if iNum2 < iNum3 then
			writeln(iNum1:4, iNum2:4, iNum3:4)
		//Verifica se o 1º é menor que o 3º
		else if iNum1 < iNum3 then
			writeln(iNum1:4, iNum3:4, iNum2:4)
		else
			writeln(iNum3:4, iNum1:4, iNum2:4)
	//Verifica se o 1º é menor que o 3º
	end	else if iNum1 < iNum3 then
		writeln(iNum2:4, iNum1:4, iNum3:4)
	//Verifica se o 2º é menor que o 3º
	else if iNum2 < iNum3 then
		writeln(iNum2:4, iNum3:4, iNum1:4)
	else	
		writeln(iNum3:4, iNum2:4, iNum1:4)
			
End.