DATA SCORE1;
	INFile "/folders/myshortcuts/전산통계/score1.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;
RUN;

DATA SCORE_CLASS1;
	SET SCORE1;

RUN;
