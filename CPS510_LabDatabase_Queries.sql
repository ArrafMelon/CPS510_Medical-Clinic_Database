-- This query calculates the total salary for each unique job title, helping the clinic manage payroll expenses across different roles.
SELECT DISTINCT Emp_ID, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Emp_ID
ORDER BY Total_Salary DESC;

-- Shows the distribution of patients by gender, helping the clinic analyze its patient demographic breakdown.
SELECT DISTINCT Gender, COUNT(Patient_ID) AS Patient_Count
FROM Patient
GROUP BY Gender
ORDER BY Patient_Count DESC;

-- Displays Employee ID with their associtaed medical ID
SELECT Emp_ID, Medical_ID
FROM Medical_Professional;

-- Shows a list of all unique receptionists in the clinic, ordered by employee ID, for front-desk management.
SELECT Emp_ID
FROM Receptionist
ORDER BY Emp_ID;

-- Shows how many doctors specialize in different fields, allowing the clinic to balance its specialization focus.
SELECT DISTINCT Specialty, COUNT(Medical_ID) AS Doctor_Count
FROM Doctor
GROUP BY Specialty
ORDER BY Doctor_Count DESC;

-- Displays how many nurses are available in the clinic, helping with staffing and resource allocation.
SELECT DISTINCT Medical_ID, COUNT(Medical_ID) AS Nurse_Count
FROM Nurse
GROUP BY Medical_ID
ORDER BY Nurse_Count DESC;

-- Displays the Patient ID with their Name and Dosage for easy viewing of patient data
SELECT Patient_ID, Name, Dosage
FROM Prescription;

-- Shows which patients have the most appointments, allowing the clinic to monitor frequent visitors and plan resources accordingly.
SELECT DISTINCT Patient_ID, COUNT(Appointment_ID) AS Appointment_Count
FROM Appointment
GROUP BY Patient_ID
ORDER BY Appointment_Count DESC;

-- This Medical Record Query checks for patients with Obesity, and it displays their height and weight for verification
-- We Order By Lightest to Heaviest
SELECT Patient_ID, Height AS Height_CM, Weight AS Weight_KG, Condition
FROM Medical_Record
WHERE Condition LIKE '%Obesity%'
ORDER BY Weight;

-- Check Which Medical Proffesional has Been updating the records, to keep in track of how consistent each medical proffesional is
SELECT Medical_id, COUNT(Update_id) AS Update_Count
FROM Updates
GROUP BY Medical_id
ORDER BY Update_count;

-- Check the Number of Results each lab test result has, this will allow the clinic to correctly stock up on the 
SELECT Test_result AS Status, COUNT(*) AS Result_Count
FROM Lab_test
GROUP BY Test_result
ORDER BY Result_Count DESC;


-- ADVANCED QUERIES
-- Count the amount of perscriptions each doctor has given out
SELECT D.Medical_ID, COUNT(Pr.Prescription_ID) AS Prescription_Count
FROM Doctor D
JOIN Prescription Pr ON D.Medical_ID = Pr.Medical_ID
GROUP BY D.Medical_ID
ORDER BY Prescription_Count DESC;

-- Retrieve details of appointments including patient and the attending medical professional
SELECT A.Appointment_ID, P.First_Name, P.Last_Name, MP.Medical_ID, A.Reason, A.Appointment_Date
FROM Appointment A
JOIN Patient P ON A.Patient_ID = P.Patient_ID
JOIN Medical_Professional MP ON A.Medical_ID = MP.Medical_ID;

-- List patients along with their associated medical records
SELECT P.Patient_ID, MR.Medical_Record_ID, MR.Condition, MR.Allergies
FROM Patient P
JOIN Medical_Record MR ON P.Patient_ID = MR.Patient_ID;


-- VIEWS
-- Create a view that lists doctors and their specialties.
CREATE VIEW Doctor_Specialty_View AS
SELECT E.Emp_ID, D.Medical_ID, D.Specialty, E.Salary
FROM Employee E
JOIN Medical_Professional MP ON E.Emp_ID = MP.Emp_ID
JOIN Doctor D ON MP.Medical_ID = D.Medical_ID;

-- Create a view to simplify access to patient prescription details.
CREATE VIEW Prescription_Details_View AS
SELECT P.Patient_ID, Pr.Name, Pr.Dosage, Pr.Frequency
FROM Prescription Pr
JOIN Patient P ON Pr.Patient_ID = P.Patient_ID;

-- Create a view summarizing appointments by patient.
CREATE VIEW Appointment_Summary_View AS
SELECT A.Patient_ID, COUNT(A.Appointment_ID) AS Total_Appointments
FROM Appointment A
GROUP BY A.Patient_ID;

SELECT *
FROM Doctor_Specialty_View;

SELECT *
FROM Prescription_Details_View;

SELECT *
FROM Appointment_Summary_View;


-- DELETES
-- Delete a patient
DELETE FROM PATIENT
WHERE PATIENT_ID = ...;

-- Delete a appointment
DELETE FROM Appointment
WHERE Appointment_ID = ...;
