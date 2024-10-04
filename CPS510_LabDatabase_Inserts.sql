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
