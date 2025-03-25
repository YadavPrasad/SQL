CREATE DATABASE L1527
USE L1527

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY, 
    patient_name VARCHAR(255),
    conditions VARCHAR(1000));

INSERT INTO patients VALUES 
(1, 'John Doe', 'DIAB1'),
(2, 'Jane Smith', 'DIAB1 HYPERTENSION'),
(3, 'Alice Brown', 'HYPERTENSION'),
(4, 'Bob Green', 'CANCER DIAB1 HYPERTENSION');

--Query for Patient with a condition
SELECT * 
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'