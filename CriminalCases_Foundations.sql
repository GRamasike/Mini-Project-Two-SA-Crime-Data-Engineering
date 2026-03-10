USE PoliceCase;

--South Africa Criminal Database

--1. Display all records from the CriminalCases table.
SELECT *
FROM criminalcases;

--2. Count the total number of cases in the table.
SELECT
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases;

--3. Count the number of cases in each province.
SELECT
Province,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY Province;

--4. Retrieve all cases where the crime type is Fraud.
SELECT *
FROM criminalcases
WHERE CrimeType = 'Fraud';

--5. Count the number of cases for each crime type.
SELECT
CrimeType,
COUNT (RecordID) AS Number_of_Cases
FROM criminalcases
GROUP BY CrimeType;

--6. Display all cases classified as High or Critical risk.
SELECT *
FROM criminalcases
WHERE RiskLevel IN ('High','Critical');

--7. Calculate the average Financial Score of all suspects.
SELECT
AVG (FinancialScore) AS Average_Financial_Score
FROM criminalcases;

--8. Find the highest Estimated Fraud Amount recorded.
SELECT
MAX (EstimatedFraudAmount_ZAR) AS Highest_Estimated_Fraud_Amount
FROM criminalcases;

SELECT TOP 1
EstimatedFraudAmount_ZAR
FROM criminalcases
ORDER BY EstimatedFraudAmount_ZAR DESC;

--9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.
SELECT TOP 10 *
FROM criminalcases
ORDER BY EstimatedFraudAmount_ZAR DESC;

--10. Display all cases where the suspect was arrested.
SELECT *
FROM criminalcases
WHERE Arrested = 'Yes';





