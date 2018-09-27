DATA SCORE1;
	INfILE "/folders/myshortcuts/전산통계/score1.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;


DATA SCORE2;
	INfILE "/folders/myshortcuts/전산통계/score2.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;
	
DATA HY;
	SET SCORE1;
		KEEP KOR MAT;
RUN;

DATA HY2;
	KEEP KOR;
	SET HY;
RUN;
