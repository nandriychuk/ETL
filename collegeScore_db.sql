CREATE DATABASE collegeScore_db;
USE collegeScore_db;

SELECT * FROM cost
	INNER JOIN race_ugds ON cost.UNITID=race_ugds.UNITID;
    
DESCRIBE cost;
SELECT COUNT(Institution_Name)
  FROM cost;
  
SELECT type.UNITID, type.Institution_Name, type.Type, earnings_gender.Mean_earn_10yr_postgrad_female, earnings_gender.Mean_earn_10yr_postgrad_male
  FROM type 
  INNER JOIN earnings_gender ON type.UNITID=earnings_gender.UNITID;
  
SELECT type.Type, CONCAT('$', FORMAT(AVG(earnings_gender.Mean_earn_10yr_postgrad_female), 2)) AS 'Average Female Earnings', CONCAT('$', FORMAT(AVG(earnings_gender.Mean_earn_10yr_postgrad_male), 2)) AS 'Average Male Earnings'
  FROM type 
  INNER JOIN earnings_gender ON type.UNITID=earnings_gender.UNITID
  GROUP BY type.Type;
  
  SELECT * FROM race_ugds
    INNER JOIN sat ON race_ugds.UNITID=sat.UNITID;

SELECT * FROM degreemajor
  INNER JOIN race_ugds ON degreemajor.UNITID=race_ugds.UNITID
  WHERE race_ugds.Black >= 0.025;


