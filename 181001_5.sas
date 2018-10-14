Data HFish;
	set sashelp.fish;
	keep height;
	


PROC univariate data=Hfish Noprint;
	Histogram height/midpoints=2 to 20 by 1;
Run;

Data HFish;
	set sashelp.fish;
	keep species;

Proc SGPLOT DATA=HFish;
	VBAR species;
	TITLE "Fish Species";
Run;

DATA HFish;
	set SASHELP.FISH;


PROC template;
	define STATGRAPH pie;
		BEGINGRAPH;
			Layout region;
				Piechart category = SPECIES/
					DATALABELLOCATION = outside
					CATEGORYDIRECTION = clockwise
					start=180 name='pie';
				DISCRETELEGEND 'pie'/
					TITLE='rate of species';
			ENDLAYOUT;
		ENDGRAPH;
	END;
	
proc SGRENDER data=Hfish template=pie;
run;
		

	
	