Program Pzim ;
var
	iNum1, iNum2, iNum3: integer;
Begin
  write('Digite o 1� n�mero: ');      //10   10    20   20    30    30
	read(iNum1);
	write('Digite o 2� n�mero: ');      //20   30    10   30    10    20
	read(iNum2);
	write('Digite o 1� n�mero: ');      //30   20    30   10    20    10
	read(iNum3);
	Clrscr;
	//Verifica se o 1� � menor que o 2�
	if iNum1 < iNum2 then begin
		//Verifica se o 2� � menor que o 3�
		if iNum2 < iNum3 then
			writeln(iNum1:4, iNum2:4, iNum3:4)
		//Verifica se o 1� � menor que o 3�
		else if iNum1 < iNum3 then
			writeln(iNum1:4, iNum3:4, iNum2:4)
		else
			writeln(iNum3:4, iNum1:4, iNum2:4)
	//Verifica se o 1� � menor que o 3�
	end	else if iNum1 < iNum3 then
		writeln(iNum2:4, iNum1:4, iNum3:4)
	//Verifica se o 2� � menor que o 3�
	else if iNum2 < iNum3 then
		writeln(iNum2:4, iNum3:4, iNum1:4)
	else	
		writeln(iNum3:4, iNum2:4, iNum1:4)
			
End.