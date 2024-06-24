/* Data Importation using SAS */

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

/* This code creates a data table called cars which is saved in the work
/* library */

/* Import Penguins.xlsx file */

proc import 
	datafile="/home/u44238988/sasuser.v94/Essential Softwares for Data Science/Penguins.xlsx"
	out = penguins
	dbms = xlsx
	replace;
	getnames=yes;
run;

/* Print the First 5 rows of the cars dataset */

proc print data=cars(obs=5);
run;

/* Print the first 5 rows of the penguins dataset */

proc print data=penguins(obs=5);
run;