<<<<<<< HEAD
DELETE FROM Appointment;
DELETE FROM Doctor;
DELETE FROM Medical_Professional;
DELETE FROM Receptionist;
DELETE FROM Nurse;
DELETE FROM Medical_Record;
DELETE FROM Patient;
DELETE FROM Employee;
DELETE FROM Lab_Test;
DELETE FROM Prescription;
DELETE FROM Update_Details;
DELETE FROM Patient_HC;
DELETE FROM Medical_Record_Update;

-- Inserts for Employee Table
INSERT INTO Employee VALUES (1, 'SIN123456789', 'john.doe@gmail.com', '123-456-7890', '123 Maple St', 55000.00);
INSERT INTO Employee VALUES (2, 'SIN987654321', 'jane.smith@gmail.com', '987-654-3210', '456 Oak St', 45000.00);
INSERT INTO Employee VALUES (3, 'SIN234567891', 'mike.brown@gmail.com', '234-567-8910', '789 Pine St', 70000.00);
INSERT INTO Employee VALUES (4, 'SIN345678912', 'lisa.white@gmail.com', '345-678-9120', '321 Birch St', 60000.00);
INSERT INTO Employee VALUES (5, 'SIN456789123', 'chris.green@gmail.com', '456-789-1230', '654 Elm St', 75000.00);
INSERT INTO Employee VALUES (6, 'SIN846284726', 'abdul.mann@gmail.com', '841-628-4726', '1237 Maple St', 65000.00);
INSERT INTO Employee VALUES (7, 'SIN0192837461', 'jack.joseph@gmail.com', '192-813-7467', '4546 Oak St', 85000.00);
INSERT INTO Employee VALUES (8, 'SIN563728472', 'lionel.messi@gmail.com', '563-728-4722', '7289 Pine St', 90000.00);
INSERT INTO Employee VALUES (9, 'SIN135462756', 'lisa.su@gmail.com', '135-046-2756', '3211 Birch St', 40000.00);
INSERT INTO Employee VALUES (10, 'SIN152637489', 'spider.man@gmail.com', '152-637-4897', '655 Elm St', 35000.00);

-- Inserts for Patient Table
INSERT INTO Patient VALUES (1, 'John', 'Doe', '1985-05-15', 'Male', 'HC12345');
INSERT INTO Patient VALUES (2, 'Jane', 'Smith', '1990-03-22', 'Female', 'HC54321');
INSERT INTO Patient VALUES (3, 'Michael', 'Brown', '1978-11-10', 'Male', 'HC98765');
INSERT INTO Patient VALUES (4, 'Lisa', 'White', '1982-07-25', 'Female', 'HC56789');
INSERT INTO Patient VALUES (5, 'Chris', 'Green', '1995-01-18', 'Male', 'HC11223');

-- Inserts for Medical_Professional Table
INSERT INTO Medical_Professional VALUES (1, 1);
INSERT INTO Medical_Professional VALUES (2, 4);
INSERT INTO Medical_Professional VALUES (3, 5);
INSERT INTO Medical_Professional VALUES (4, 6);
INSERT INTO Medical_Professional VALUES (5, 7);
INSERT INTO Medical_Professional VALUES (6, 8);
INSERT INTO Medical_Professional VALUES (7, 9);
INSERT INTO Medical_Professional VALUES (8, 10);

-- Inserts for Receptionist Table
INSERT INTO Receptionist VALUES (2);
INSERT INTO Receptionist VALUES (3);

-- Inserts for Doctor Table
INSERT INTO Doctor VALUES (1, 'Cardiology');
INSERT INTO Doctor VALUES (2, 'Neurology');
INSERT INTO Doctor VALUES (3, 'Pediatrics');
INSERT INTO Doctor VALUES (4, 'Dermatology');

-- Inserts for Nurse Table
INSERT INTO Nurse VALUES (5);
INSERT INTO Nurse VALUES (6);
INSERT INTO Nurse VALUES (7);
INSERT INTO Nurse VALUES (8);

-- Inserts for Medical_Record Table
INSERT INTO Medical_Record VALUES (1, 1, 'Diabetes, Hypertension', 'None', 'None', 170, 67);
INSERT INTO Medical_Record VALUES (2, 2, 'Asthma', 'Obesity', 'Pollen', 186, 120);
INSERT INTO Medical_Record VALUES (3, 3, 'Chronic Pain', 'Obesity', 'None', 200, 90);
INSERT INTO Medical_Record VALUES (4, 4, 'Migraine', 'Cancer', 'Gluten', 167, 69);
INSERT INTO Medical_Record VALUES (5, 5, 'Arthritis', 'Obesity', 'Penicillin', 159, 80);

-- Inserts for Medical_Record_Update Table
INSERT INTO Medical_Record_Update VALUES (1, 1);
INSERT INTO Medical_Record_Update VALUES (2, 2);
INSERT INTO Medical_Record_Update VALUES (3, 3);
INSERT INTO Medical_Record_Update VALUES (4, 4);
INSERT INTO Medical_Record_Update VALUES (5, 5);

-- Inserts for Update_Details Table
INSERT INTO Update_Details VALUES (1, 1, 1);
INSERT INTO Update_Details VALUES (2, 2, 2);
INSERT INTO Update_Details VALUES (3, 3, 3);
INSERT INTO Update_Details VALUES (4, 4, 4);
INSERT INTO Update_Details VALUES (5, 5, 5);

-- Inserts for Appointment Table
INSERT INTO Appointment VALUES (1, 1, 101, 1, '2024-12-01 10:00:00', 'Routine Checkup');
INSERT INTO Appointment VALUES (2, 2, 102, 2, '2024-12-02 11:00:00', 'Asthma Follow-Up');
INSERT INTO Appointment VALUES (3, 3, 103, 3, '2024-12-03 09:30:00', 'Pain Management');
INSERT INTO Appointment VALUES (4, 4, 104, 4, '2024-12-04 14:00:00', 'Migraine Consultation');
INSERT INTO Appointment VALUES (5, 5, 105, 5, '2024-12-05 13:00:00', 'Arthritis Assessment');

-- Inserts for Lab_Test Table
INSERT INTO Lab_Test VALUES (1, 'Blood Test', 'Normal', 1, 1);
INSERT INTO Lab_Test VALUES (2, 'X-Ray', 'Fracture Detected', 2, 2);
INSERT INTO Lab_Test VALUES (3, 'MRI', 'No Abnormalities', 3, 3);
INSERT INTO Lab_Test VALUES (4, 'CT Scan', 'Inflammation Detected', 4, 4);

-- Inserts for Patient_HC Table
INSERT INTO Patient_HC VALUES ('HC12345', 1);
INSERT INTO Patient_HC VALUES ('HC54321', 2);
INSERT INTO Patient_HC VALUES ('HC98765', 3);
INSERT INTO Patient_HC VALUES ('HC56789', 4);
INSERT INTO Patient_HC VALUES ('HC11223', 5);

-- Inserts for Prescription Table
INSERT INTO Prescription VALUES (1, 1, 'HC12345', 'Metformin', '500mg', 'Twice a Day');
INSERT INTO Prescription VALUES (2, 2, 'HC54321', 'Ventolin', '2 Puffs', 'As Needed');
INSERT INTO Prescription VALUES (3, 3, 'HC98765', 'Ibuprofen', '200mg', 'Three Times a Day');
INSERT INTO Prescription VALUES (4, 4, 'HC56789', 'Sumatriptan', '50mg', 'As Needed');
=======
DELETE FROM APPOINTMENT;
DELETE FROM DOCTOR;
DELETE FROM MEDICAL_PROFESSIONAL;
DELETE FROM RECEPTIONIST;
DELETE FROM NURSE;
DELETE FROM MEDICAL_RECORD;
DELETE FROM PATIENT;
DELETE FROM EMPLOYEE;
DELETE FROM LAB_TEST;
DELETE FROM PRESCRIPTION;
DELETE FROM UPDATES;

-- Insert Employees first
INSERT INTO EMPLOYEE VALUES (11, '333-578-1117', 'alan@med.com', '416-737-3937', '17 Birchmount Rd', '65000');
INSERT INTO EMPLOYEE VALUES (12, '333-575-2117', 'bethany@med.com', '647-797-3937', '11 Eglinton Rd', '35000');
INSERT INTO EMPLOYEE VALUES (13, '333-578-2222', 'charlie@med.com', '416-123-4567', '45 Main St', '70000');
INSERT INTO EMPLOYEE VALUES (14, '333-578-3333', 'diana@med.com', '647-890-1234', '88 Queen St', '48000');
INSERT INTO EMPLOYEE VALUES (15, '333-578-4444', 'edward@med.com', '416-456-7890', '22 King St', '55000');

-- Insert Patients next
INSERT INTO PATIENT VALUES (201, 'Benjamin', 'Henry', TO_DATE('22-MAR-1999', 'DD-MON-YYYY'), 'MALE', '1506-45-986-HC');
INSERT INTO PATIENT VALUES (202, 'Sophia', 'Smith', TO_DATE('15-JUN-2001', 'DD-MON-YYYY'), 'FEMALE', '1506-45-987-HC');
INSERT INTO PATIENT VALUES (203, 'Liam', 'Johnson', TO_DATE('10-JAN-1985', 'DD-MON-YYYY'), 'MALE', '1506-45-988-HC');
INSERT INTO PATIENT VALUES (204, 'Olivia', 'Williams', TO_DATE('28-FEB-1990', 'DD-MON-YYYY'), 'FEMALE', '1506-45-989-HC');
INSERT INTO PATIENT VALUES (205, 'Noah', 'Brown', TO_DATE('30-SEP-1978', 'DD-MON-YYYY'), 'MALE', '1506-45-990-HC');

-- Insert Medical Professionals next
INSERT INTO MEDICAL_PROFESSIONAL VALUES (3001, 12);
INSERT INTO MEDICAL_PROFESSIONAL VALUES (3002, 13);
INSERT INTO MEDICAL_PROFESSIONAL VALUES (3003, 14);
INSERT INTO MEDICAL_PROFESSIONAL VALUES (3004, 15);

-- Insert Receptionists next
INSERT INTO RECEPTIONIST VALUES (11);

-- Insert Doctors next
INSERT INTO DOCTOR VALUES (3001, 'Cardiologist');
INSERT INTO DOCTOR VALUES (3002, 'General Practitioner');
INSERT INTO DOCTOR VALUES (3003, 'Neurologist');

-- Insert Nurses next
INSERT INTO NURSE VALUES(3004);

-- Insert Medical Records last
INSERT INTO MEDICAL_RECORD VALUES (40001, 201, 'Broken Leg', 'Asthma', 'Peanuts', 175, 86);
INSERT INTO MEDICAL_RECORD VALUES (40002, 202, 'None', 'Obesity', 'None', 188, 175);
INSERT INTO MEDICAL_RECORD VALUES (40003, 203, 'Head Injury, Stab wound', 'Lung Cancer', 'None', 169, 65);
INSERT INTO MEDICAL_RECORD VALUES (40004, 204, 'None', 'Asthma', 'Dust', 165, 54);
INSERT INTO MEDICAL_RECORD VALUES (40005, 205, 'Fractured Arm', 'Obesity, Asthma', 'Nuts, Lentils', 185, 200);

INSERT INTO UPDATES VALUES (40001, 3001, 500001);
INSERT INTO UPDATES VALUES (40002, 3001, 500002);
INSERT INTO UPDATES VALUES (40002, 3002, 500003);
INSERT INTO UPDATES VALUES (40001, 3002, 500004);
INSERT INTO UPDATES VALUES (40005, 3003, 500005);

INSERT INTO PRESCRIPTION VALUES (500, 3001, '1506-45-988-HC', 'Liam Johnson', '50mg Vitamin B12', 'Twice a day', 203);
INSERT INTO PRESCRIPTION VALUES (501, 3002, '1506-45-990-HC', 'Noah Brown', '1 Inhaler puff, 2 grams Painkiller','Once a week', 205);

INSERT INTO APPOINTMENT VALUES (1200, 203, 69, 3001, TO_DATE('28-FEB-2024', 'DD-MON-YYYY'), 'Breathing Issues');
INSERT INTO APPOINTMENT VALUES (1201, 205, 11, 3002, TO_DATE('31-MAR-2024', 'DD-MON-YYYY'), 'Regular Checkup');

INSERT INTO LAB_TEST VALUES (20001, 'Blood', 'Low Testosterone', 3003, 203);
INSERT INTO LAB_TEST VALUES (20002, 'Urine', 'Dehydrated', 3002, 201);
INSERT INTO LAB_TEST VALUES (20003, 'Blood', 'High Iron', 3002, 204);
INSERT INTO LAB_TEST VALUES (20004, 'Urine', 'Low Phosphorous', 3001, 204);
INSERT INTO LAB_TEST VALUES (20005, 'Urine', 'Low Phosphorous', 3001, 205);
INSERT INTO LAB_TEST VALUES (20006, 'Urine', 'Low Phosphorous', 3001, 203);
>>>>>>> 7447dee9f63d372c4476a27a39a6f5a6696c2d35
