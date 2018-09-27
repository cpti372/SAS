DATA SCORE1;
	INfILE "/folders/myshortcuts/전산통계/score1.txt" ;
	INPUT GEN $KOR MAT ENG SCI;


DATA SCORE2;
	INfILE "/folders/myshortcuts/전산통계/score2.txt" ;
	INPUT GEN $KOR MAT ENG SCI;
	
DATA STA;
	SET SCORE1 SCORE2;

	
DATA PASS;
	INfILE "/folders/myshortcuts/전산통계/pass.txt" ;
	LENGTH PASS$ 9;
	INPUT GENDER$ PASS$;
	
DATA STA2;
	MERGE STA PASS;
	IF PASS="합격" THEN PASS="T";
	ELSE IF PASS="불합격" THEN PASS="F";
	TOT=KOR+MAT+ENG+SCI;
	AVG=TOT/4;
	IF AVG >=80  THEN PRIZE='YES';
	ELSE PRIZE='NO';
	
RUN;
	