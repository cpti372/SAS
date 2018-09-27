DATA SCORE1;
	INfILE "/folders/myshortcuts/전산통계/score1.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;


DATA SCORE2;
	INfILE "/folders/myshortcuts/전산통계/score2.txt" ;
	INPUT GENDERS $KOR MAT ENG SCI;

DATA SCORES;
	SET SCORE1 SCORE2;
	
DATA PASS;
	INfILE "/folders/myshortcuts/전산통계/pass.txt" ;
	LENGTH PASS$ 9;
	INPUT GENDER$ PASS$;
	
DATA SCORES_PASS;
	MERGE SCORES PASS;
RUN;