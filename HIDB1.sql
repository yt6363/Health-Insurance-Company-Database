USE HealthInsuranceDB;

-- Create the Patients table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(50),
    insurance_id INT
);

-- Create the Physicians table
CREATE TABLE Physicians (
    physician_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(50)
);

-- Create the Insurance table
CREATE TABLE Insurance (
    insurance_id INT PRIMARY KEY,
    insurance_provider VARCHAR(50),
    policy_number VARCHAR(50),
    policy_type VARCHAR(20),
    coverage_amount DECIMAL(10, 2)
);

-- Create the Patient_Physician table
CREATE TABLE Patient_Physician (
    patient_id INT,
    physician_id INT,
    PRIMARY KEY (patient_id, physician_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (physician_id) REFERENCES Physicians(physician_id)
);


