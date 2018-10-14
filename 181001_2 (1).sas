Data cars;
	set SASHELP.Cars;
	Keep Make Type;

Proc SGPLOT DATA=cars;
	VBAR MAKE /GROUP=TYPE;
	TITLE "Make freqeuncy of cars"
Run;