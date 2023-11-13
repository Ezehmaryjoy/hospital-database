-- CREATE DATABASE lautech_hospital;

 /*CREATE TABLE IF NOT EXISTS department (
    department_id INT PRIMARY KEY ,
    department_name VARCHAR(50) NOT NULL,
    dept_location VARCHAR(100) NULL
 
);
ALTER TABLE department
AUTO_INCREMENT = 50


INSERT INTO department ( department_id, department_name, dept_location)
VALUES 
(50, 'Human Resources', 'Floor 1, Building A'),
(51, 'IT Services', 'Floor 2, Building B'),
(52, 'Finance', 'Floor 3, Building C'),
(53, 'Marketing', 'Floor 4, Building A'),
(54, 'Research and Development', 'Floor 5, Building B'),
(55, 'Customer Support', 'Floor 6, Building C'),
(56, 'Sales', 'Floor 7, Building A'),
(57, 'Quality Assurance', 'Floor 8, Building B'),
(58, 'Legal', 'Floor 9, Building C'),
(59, 'Administration', 'Floor 10, Building A');
*/
-- ALTER TABLE Doctor add column department_id INT
-- DROP TABLE DOCTOR;


   /* CREATE TABLE IF NOT EXISTS Doctor (
    DoctorID INT PRIMARY KEY ,
    department_id INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Gender VARCHAR(23),
	LicenseNumber INT CHECK(LicenseNumber<=55555),
    HospitalAffiliation  VARCHAR(34),
	SampleRecords VARCHAR(34)

    );
    
     ALTER TABLE Doctor 
     AUTO_INCREMENT = 101
 
    INSERT INTO Doctor (DoctorID, department_id, FirstName, LastName, Specialty, PhoneNumber, Email, Gender, LicenseNumber, HospitalAffiliation, SampleRecords)
VALUES 
(101, 50, 'John', 'Doe', 'Cardiology', '123-456-7890', 'john.doe@email.com', 'Male', 12345, 'City Hospital', 'Sample Data 1'),
(102, 51,  'Jane', 'Smith', 'Pediatrics', '987-654-3210', 'jane.smith@email.com', 'Female', 23456, 'County Medical Center', 'Sample Data 2'),
(103, 52,  'Bob', 'Johnson', 'Orthopedics', '555-123-4567', 'bob.johnson@email.com', 'Male', 34567, 'Community Health Clinic', 'Sample Data 3'),
(104, 53,  'Alice', 'Williams', 'Dermatology', '999-888-7777', 'alice.williams@email.com', 'Female', 45678, 'University Hospital', 'Sample Data 4'),
(105, 54, 'Mark', 'Anderson', 'Neurology', '333-555-9999', 'mark.anderson@email.com', 'Male', 54321, 'General Medical Center', 'Sample Data 5'),
(106, 55, 'Emily', 'Brown', 'Oncology', '777-666-5555', 'emily.brown@email.com', 'Female', 43210, 'Private Practice Clinic', 'Sample Data 6'),
(107, 56, 'David', 'Lee', 'Internal Medicine', '111-222-3333', 'david.lee@email.com', 'Male', 50000, 'Veterans Affairs Hospital', 'Sample Data 7'),
(108, 57, 'Sophia', 'Clark', 'Gynecology', '444-333-2222', 'sophia.clark@email.com', 'Female', 46532, 'Children Hospital', 'Sample Data 8'),
(109, 58, 'Michael', 'Taylor', 'Urology', '666-777-8888', 'michael.taylor@email.com', 'Male', 51234, 'Specialty Medical Clinic', 'Sample Data 9'),
(110, 59, 'Olivia', 'Johnson', 'ENT', '222-444-6666', 'olivia.johnson@email.com', 'Female', 50123, 'Mental Health Center', 'Sample Data 10');
   


CREATE TABLE IF NOT EXISTS Patient (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    NextOfKin VARCHAR(100)
);


INSERT INTO Patient (FirstName, LastName, DOB, Gender, PhoneNumber, Email, NextOfKin)
VALUES 
('Alice', 'Johnson', '1990-05-15', 'Female', '555-123-4567', 'alice.johnson@email.com', 'Bob Johnson'),
('Bob', 'Smith', '1985-08-20', 'Male', '987-654-3210', 'bob.smith@email.com', 'Jane Smith'),
('Charlie', 'Davis', '1998-02-10', 'Male', '333-555-9999', 'charlie.davis@email.com', 'David Davis'),
('David', 'Wilson', '1976-11-25', 'Male', '111-222-3333', 'david.wilson@email.com', 'Emma Wilson'),
('Emma', 'Taylor', '1982-07-18', 'Female', '777-666-5555', 'emma.taylor@email.com', 'Michael Taylor'),
('Frank', 'Brown', '1995-04-30', 'Male', '444-333-2222', 'frank.brown@email.com', 'Sophia Brown'),
('Grace', 'Miller', '1989-09-05', 'Female', '666-777-8888', 'grace.miller@email.com', 'James Miller'),
('Henry', 'Moore', '1980-03-12', 'Male', '222-444-6666', 'henry.moore@email.com', 'Olivia Moore'),
('Ivy', 'Jones', '1993-12-08', 'Female', '999-888-7777', 'ivy.jones@email.com', 'Jack Jones'),
('Jack', 'White', '1970-06-22', 'Male', '123-456-7890', 'jack.white@email.com', 'Sophia White');


CREATE TABLE IF NOT EXISTS Financial (
    TransactionID INT PRIMARY KEY,
    PatientID INT,
    TransactionDate DATE,
    Amount DECIMAL(10, 2),
    Description VARCHAR(255),
    Transaction_Type VARCHAR(34),  
	PaymentMethod VARCHAR(34) ,     

    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
    
);

ALTER TABLE Financial
AUTO_INCREMENT = 201


INSERT INTO Financial(TransactionID, PatientID, TransactionDate, Amount, Description, Transaction_Type, PaymentMethod)
VALUES 
(201, 1, '2023-01-10', 150.00, 'Doctor Visit', 'Medical Expense', 'Credit Card'),
(202, 2, '2023-02-15', 200.00, 'Lab Tests', 'Medical Expense', 'Cash'),
(203, 3, '2023-03-20', 75.50, 'Prescription Medication', 'Medical Expense', 'Insurance'),
(204, 4, '2023-04-25', 300.00, 'Physical Therapy', 'Medical Expense', 'Debit Card'),
(205, 5, '2023-05-30', 50.00, 'Follow-up Appointment', 'Medical Expense', 'Cash'),
(206, 6, '2023-06-05', 120.00, 'X-ray', 'Medical Expense', 'Credit Card'),
(207, 7, '2023-07-10', 90.25, 'Blood Test', 'Medical Expense', 'Debit Card'),
(208, 8, '2023-08-15', 180.75, 'Consultation', 'Medical Expense', 'Insurance'),
(209, 9, '2023-09-20', 25.50, 'Medication Refill', 'Medical Expense', 'Cash'),
(210, 10, '2023-10-25', 400.00, 'Surgery', 'Medical Expense', 'Credit Card');


    CREATE TABLE IF NOT EXISTS MedicalRecord (
    RecordID INT PRIMARY KEY ,
    PatientID INT,
    DoctorID INT,
    DateOfAdmission DATE,
    DateOfDischarge DATE,
    MedicalCondition VARCHAR(255),
    Medications VARCHAR(255),
    Allergies VARCHAR(255),
    LabTestResults VARCHAR(255),
    TreatmentPlan VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

ALTER TABLE MedicalRecord
AUTO_INCREMENT = 10

INSERT INTO MedicalRecord (RecordID, PatientID, DoctorID, DateOfAdmission, DateOfDischarge, MedicalCondition, Medications, Allergies, LabTestResults, TreatmentPlan)
VALUES 
(10, 1, 101, '2023-01-10', '2023-01-15', 'Fever', 'Paracetamol', 'None', 'Normal', 'Rest and Hydration'),
(11, 2, 102, '2023-02-15', '2023-02-20', 'Sprained Ankle', 'Ibuprofen', 'None', 'X-ray needed', 'Physical Therapy'),
(12, 3, 103, '2023-03-20', '2023-03-25', 'Flu', 'Antibiotics', 'Penicillin', 'Positive', 'Isolation and Medication'),
(13, 4, 104, '2023-04-25', '2023-05-01', 'Broken Arm', 'Painkillers', 'None', 'X-ray needed', 'Casting'),
(14, 5, 105, '2023-05-30', '2023-06-05', 'Migraine', 'Migraine Medication', 'None', 'Normal', 'Rest and Medication'),
(15, 6, 106, '2023-06-05', '2023-06-10', 'Hypertension', 'Blood Pressure Medication', 'None', 'Normal', 'Lifestyle Changes'),
(16, 7, 107, '2023-07-10', '2023-07-15', 'Concussion', 'Rest', 'None', 'CT Scan needed', 'Observation'),
(17, 8, 108, '2023-08-15', '2023-08-20', 'Diabetes', 'Insulin', 'None', 'Normal', 'Diet and Medication'),
(18, 9, 109, '2023-09-20', '2023-09-25', 'Pneumonia', 'Antibiotics', 'Penicillin', 'Positive', 'Hospitalization and Medication'),
(19, 10, 110, '2023-10-25', '2023-11-01', 'Appendicitis', 'Surgery', 'None', 'Blood tests needed', 'Surgery and Recovery');



    CREATE TABLE IF NOT EXISTS Treatment (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date_reg  DATE,
    ProcedureDescription VARCHAR(255),
    Dosage VARCHAR(50),
    Duration VARCHAR(50),
    Outcome VARCHAR(255),
    BillingInfo VARCHAR(255),
    Notes VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
    
  );  
  
  ALTER TABLE Treatment
  AUTO_INCREMENT = 111
  
  INSERT INTO treatment (TreatmentID, PatientID, DoctorID, Date_reg, ProcedureDescription, Dosage, Duration, Outcome, BillingInfo, Notes)
VALUES 
(111, 1, 101, '2023-01-10', 'Physical Examination', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(112, 2, 102, '2023-02-15', 'Blood Test', 'N/A', 'N/A', 'Normal', 'Pending', 'Waiting for results'),
(113, 3, 103, '2023-03-20', 'X-ray', 'N/A', 'N/A', 'Normal', 'Unpaid', 'Follow up required'),
(114, 4, 104, '2023-04-25', 'Surgery', 'Varies', '2 hours', 'Successful', 'Paid', 'Recovery instructions provided'),
(115, 5, 105, '2023-05-30', 'Medication Prescription', 'As prescribed', '10 days', 'Improved', 'Paid', 'Follow up after completion'),
(116, 6, 106, '2023-06-05', 'Physical Therapy', 'N/A', '5 sessions', 'Improving', 'Unpaid', 'Patient compliance needed'),
(117, 7, 107, '2023-07-10', 'MRI Scan', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(118, 8, 108, '2023-08-15', 'Consultation', 'N/A', 'N/A', 'Normal', 'Unpaid', 'Follow up required'),
(119, 9, 109, '2023-09-20', 'Ultrasound', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(120, 10, 110, '2023-10-25', 'Dental Procedure', 'N/A', 'N/A', 'Normal', 'Pending', 'Appointment scheduled for follow up');


CREATE TABLE IF NOT EXISTS Staff (
    StaffID INT PRIMARY KEY ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email  VARCHAR(54) UNIQUE,
    DateOfBirth VARCHAR(25),
    Gender VARCHAR(23),
	department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
    

); 


ALTER TABLE staff
AUTO_INCREMENT = 6


INSERT INTO treatment (TreatmentID, PatientID, DoctorID, Date_reg, ProcedureDescription, Dosage, Duration, Outcome, BillingInfo, Notes)
VALUES 
(6, 1, 101, '2023-01-10', 'Physical Examination', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(7, 2, 102, '2023-02-15', 'Blood Test', 'N/A', 'N/A', 'Normal', 'Pending', 'Waiting for results'),
(8, 3, 103, '2023-03-20', 'X-ray', 'N/A', 'N/A', 'Normal', 'Unpaid', 'Follow up required'),
(9, 4, 104, '2023-04-25', 'Surgery', 'Varies', '2 hours', 'Successful', 'Paid', 'Recovery instructions provided'),
(10, 5, 105, '2023-05-30', 'Medication Prescription', 'As prescribed', '10 days', 'Improved', 'Paid', 'Follow up after completion'),
(11, 6, 106, '2023-06-05', 'Physical Therapy', 'N/A', '5 sessions', 'Improving', 'Unpaid', 'Patient compliance needed'),
(12, 7, 107, '2023-07-10', 'MRI Scan', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(13, 8, 108, '2023-08-15', 'Consultation', 'N/A', 'N/A', 'Normal', 'Unpaid', 'Follow up required'),
(14, 9, 109, '2023-09-20', 'Ultrasound', 'N/A', 'N/A', 'Normal', 'Paid', 'No special notes'),
(15, 10, 110, '2023-10-25', 'Dental Procedure', 'N/A', 'N/A', 'Normal', 'Pending', 'Appointment scheduled for follow up');


	CREATE TABLE DoctorPatient (
    DoctorID INT,
    PatientID INT,
    AppointmentDate DATE,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    PRIMARY KEY (DoctorID, PatientID)

);

INSERT INTO DoctorPatient (DoctorID, PatientID, AppointmentDate)
VALUES 
(101, 1, '2023-01-10'),
(102, 2, '2023-02-15'),
(103, 3, '2023-03-20'),
(104, 4, '2023-04-25'),
(105, 5,'2023-08-15'),
(106, 6, '2023-09-20'),
(107, 10, '2023-10-25');
*/






  







































































































































































































































































































































































































































