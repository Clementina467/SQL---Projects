-- creating a database --
CREATE DATABASE Hospital;

-- Selecting diagnosis table --
SELECT *
FROM diagnosis_information;

-- Selecting patient table --
SELECT *
FROM patient_information;

-- patients diagnosed with cancer sorted by treatment cost --
SELECT patient_id, diagnosis, treatment_cost
FROM diagnosis_information
WHERE diagnosis = "Cancer"
ORDER BY treatment_cost DESC;


-- count of diagnosis per department --
SELECT department, COUNT(diagnosis) AS count_diagnosis
FROM diagnosis_information
GROUP BY department;

-- department where the average treatment_cost is greater than 3000 --
SELECT department, AVG(treatment_cost) AS avg_treament_cost
FROM diagnosis_information
GROUP BY department
HAVING AVG(treatment_cost) > 3000;

-- patients with more than 3 diagnosis --
SELECT patient_id, COUNT(diagnosis)
FROM diagnosis_information
GROUP BY patient_id
HAVING COUNT(diagnosis) > 3;

-- patients whose patient_id exists in the diagnosis table for the neurology department --
SELECT DISTINCT p.patient_id, p.first_name AS patient_first_name, p.last_name AS patient_last_name, d.department
FROM patient_information AS p
INNER JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
WHERE department = "Neurology";

-- a column that categorizes treatment_cost --
SELECT *,
       CASE
         WHEN treatment_cost < 1000 THEN 'Low'
         WHEN treatment_cost BETWEEN 1000 AND 3000 THEN 'Medium'
         ELSE 'High'
       END AS cost_category
FROM diagnosis_information;

-- patient name and their most recent diagnosis --
SELECT p.first_name AS patient_first_name,p.last_name AS patient_last_name, d.diagnosis, d.diagnosis_date
FROM patient_information AS p
INNER JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
WHERE d.diagnosis_date = (SELECT MAX( d2.diagnosis_date) FROM diagnosis_information AS d2 WHERE d2.patient_id = p.patient_id); 

-- average cost of treatment per severity level --
SELECT severity, AVG(treatment_cost) AS avg_cost
FROM diagnosis_information
GROUP BY severity;

-- patients and the number of time they have been diagnosed --
SELECT p.patient_id, p.first_name, p.last_name, COUNT(d.diagnosis_id) AS diagnosis_count
FROM patient_information AS p
LEFT JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name;

-- patients who have never been diagnosed --
SELECT p.first_name AS patient_first_name, p.last_name AS patient_last_name, d.diagnosis, d.diagnosis_date
FROM patient_information AS p
LEFT JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
WHERE diagnosis IS NULL;




    
    
