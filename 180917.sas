data CLASS;
	set SASHELP.CLASS;

PROC SORT DATA=CLASS OUT=SORTED;
	BY Descending AGE;
	
	
PROC Plot data=CLASS;
	PLOT height*age="*"/VAXIS=48 to 75 BY 2 HAXIS=10 to 20 by 2;
	
	
PROC MEANS DATA=CLASS;
	VAR HEIGHT;
	CLASS AGE;

PROC print data=sorted;
	
RUN;
