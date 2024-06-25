/* Data Transformations and Queries using SAS */

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

/* KEEP specific columns */

data selected_columns;
  set heart
  (keep=Chol_Status 
        BP_Status 
        Weight_Status 
        Smoking_Status);
run;

/* Print the new dataset to verify */

proc print 
  data=selected_columns(obs=5);
run;

/* Filter rows where Chol_Status is not High */

data filtered_rows;
  set heart;
  where Chol_Status ne 'High';
run;

/* Print the new dataset to verify */

proc print 
  data=filtered_rows(obs=5);
run;

/* Add BMI to heart dataset */

data heart;
  set heart;
  BMI = (Weight / (Height**2))*703;
run;

/* Print the new dataset to verify */

proc print 
  data=heart(obs=5);
run;