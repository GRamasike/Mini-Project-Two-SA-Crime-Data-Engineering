USE  PoliceCase;

-- South Africa Criminal Database

--Display all records from the CriminalCases table

SELECT *
FROM criminalcases;

--1. Identify the province with the highest number of cases.
SELECT 
Province,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY Province;

--2. Retrieve the youngest suspect in the dataset.
SELECT
MIN (Age) AS Youngest_Suspect
FROM criminalcases;

--3. Retrive the oldest suspect in the dataset.
SELECT
MAX (Age) AS Oldest_Suspect
FROM criminalcases; 

--4. Count the number of cases handled by each investigating officer.
SELECT
InvestigatingOfficer,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY InvestigatingOfficer;

--5. Calculate the average Estimated Fraud Amount per crime type.
SELECT 
CrimeType,
AVG (EstimatedFraudAmount_ZAR) AS Average_Estimated_Fraud_Amount
FROM criminalcases
GROUP BY CrimeType;

--6. Display all cases occuring in Gauteng province.
SELECT *
FROM criminalcases
WHERE Province = 'Gauteng';

--7. Retrieve all Fraud cases classified as High Risk.
SELECT *
FROM criminalcases
WHERE CrimeType = 'Fraud' AND
RiskLevel = 'High';

--8. Count the number of cases per year based on crime date.
SELECT
COUNT (RecordID) AS Number_of_Cases,
YEAR (CrimeDate) AS Year_of_Crime
FROM criminalcases
GROUP BY YEAR(Crimedate);

--9. Display all suspects with a Finacial Score below 500.
SELECT 
FullName,
FinancialScore
FROM criminalcases
WHERE FinancialScore < 500;

--10. Identify the most common crime type in the database.
SELECT TOP 1
CrimeType,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY CrimeType
ORDER BY Number_of_Cases DESC;