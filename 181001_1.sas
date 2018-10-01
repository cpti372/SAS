Data HFish;
	set sashelp.fish;
	keep height;
	
Proc means data=hfish MAX MIN;

PROC univariate data=Hfish Noprint;
	Histogram height
	/Normal;
Run;