/* Understanding Data Structure and Column Contents */

/* Import Cars.csv Dataset */

/* Import the Cars.csv file */

/* Locate file path. Find the Cars.csv file to the
/* left. Right-click the file and scroll down to properties.
/* Double click the file path (in LOCATION) and copy the path (CTRL + C) */

/* Using proc import, paste your file path in datafile = "" */

/* NOTE: THE BELOW IS MY SPECIFIC FILE PATH. YOU MUST CHANGE TO YOUR
/* FILE PATH USING THE ABOVE PROCEDURES */

proc import 
	datafile="/home/u44238988/sasuser.v94/Essential Softwares for Data Science/Cars.csv"
	out = cars
	dbms = csv
	replace;
	getnames=yes;
run;

/* Examine Data Structure using PROC CONTENTS */

proc contents
	data = cars;
run;

/* Import the NYC Airplanes 2013.xlsx file */

proc import
	datafile="/home/u44238988/sasuser.v94/Essential Softwares for Data Science/NYC Airplanes 2013.xlsx"
	out = airplanes
	dbms = xlsx
	replace;
	getnames=yes;
run;

/* Examine Data Structure using PROC CONTENTS */

proc contents
	data = airplanes;
run;

/* Check for character missing values */

proc freq
	data = cars;
	tables _CHAR_ / missing;
run;

/* Check for numeric missing values */

proc means
	data = airplanes n nmiss;
run;