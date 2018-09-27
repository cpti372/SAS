DATA SCORE1;
	INfILE "/folders/myshortcuts/전산통계/score1.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;
RUN;

DATA SCORE2;
	INfILE "/folders/myshortcuts/전산통계/score2.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;
Run;

DATA SCORES;
	SET score1 score2;
RUN;