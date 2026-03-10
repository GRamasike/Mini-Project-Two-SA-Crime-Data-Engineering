USE  PoliceCase;

-- South Africa Criminal Database

--Display all records from the CriminalCases table

SELECT *
FROM criminalcases;

-- 1. Count how many suspects are arrested versus not arrested.
SELECT 
Arrested,
COUNT (RecordID) AS Number_of_Suspects
FROM criminalcases
GROUP BY Arrested;

--2. Count the number of cases associated with each bank.
SELECT BankInvolved,
COUNT (RecordID) As Number_of_Cases
FROM criminalcases
GROUP BY BankInvolved;

--3. Calculate the total Estimated Fraud Amount per province.
SELECT 
Province,
SUM (EstimatedFraudAmount_ZAR) AS Total_Estimated_Fraud_Amount
FROM criminalcases
GROUP BY Province ;

--4. Retrieve all suspects older than 50 years.
SELECT FullName,
Age
FROM criminalcases
WHERE Age > 50;

--5. Calculate the average age of suspects per province.
SELECT 
Province,
AVG (Age) As Average_Age
FROM criminalcases
GROUP BY Province;

--6. Display all cases recorded from 2020 onwards
SELECT *
FROM criminalcases
WHERE CrimeDate >= '01-01-2020';

--7. Count how many cases resulted in a Convicted status.
SELECT 
CaseStatus,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
WHERE CaseStatus = 'Convicted'
GROUP BY CaseStatus;

SELECT
COUNT (RecordID) AS Number_of_Convicted_Cases
FROM criminalcases
WHERE CaseStatus = 'Convicted';

--8. Retrive all suspects with more than three previous offenses.
SELECT
FullName,
PreviousOffenses
FROM criminalcases
WHERE PreviousOffenses > 3;

--9. Show the distribution of cases by Risk Level.
SELECT RiskLevel,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY RiskLevel;

--10. Calculate the total Estimated Fraud Amount across all cases.
SELECT
SUM (CAST(EstimatedFraudAmount_ZAR AS MONEY)) AS Total_Estimated_Fraud_Amount
FROM criminalcases;


