-- Question 1
SELECT * 
FROM Person.Address;

-- Question 2
SELECT AddressID, PostalCode 
FROM Person.Address 
WHERE City IN ('Edmonds', 'Toronto');

-- Question 3
SELECT COUNT(AddressLine1) AS NumberOfAddresses 
FROM Person.Address 
WHERE PostalCode BETWEEN ‘70000’ AND ‘80000’;

-- Question 4
SELECT COUNT(AddressLine1) as NumberOfAddress, PostalCode 
FROM Person.Address 
WHERE PostalCode BETWEEN ‘70000’ AND ‘80000’ GROUP BY PostalCode 
ORDER BY PostalCode DESC;

-- Question 5
SELECT MIN(PostalCode) as MinPostalCode, City 
FROM Person.Address 
WHERE City IN ('Bothell', 'Monroe') 
GROUP BY City;
