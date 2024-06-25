/* Basic Data Analysis using SAS */

/* Import the HEART.csv file */

/* Locate file path. Find the HEART.csv file to the
/* left. Right-click the file and scroll down to properties.
/* Double click the file path (in LOCATION) and copy the path (CTRL + C) */

/* Using proc import, paste your file path in datafile = "" */

/* NOTE: THE BELOW IS MY SPECIFIC FILE PATH. YOU MUST CHANGE TO YOUR
/* FILE PATH USING THE ABOVE PROCEDURES */

proc import 
	datafile="/home/u44238988/sasuser.v94/Essential Softwares for Data Science/HEART.csv"
	out = heart
	dbms = csv
	replace;
	getnames=yes;
run;

/* Calcualte summary statistics for height and weight */

proc means
	data = heart mean median std;
	var Height Weight;
run;

/* Create a histogram for Height */

proc sgplot 
	data=heart;
	histogram Height;
	title 'Histogram of Height';
run;

/* Calculate frequency of Weight_Status variable */

proc freq 
	data=heart;
	tables Weight_Status;
run;

/* Create a bar plot for Height */

proc sgplot 
	data=heart;
	vbar Weight_Status;
	title 'Bar Chart of Weight Status';
run;

