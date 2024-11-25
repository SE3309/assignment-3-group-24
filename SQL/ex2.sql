CREATE TABLE Dispatcher (
    Dispatcher_ID INT NOT NULL AUTO_INCREMENT,
    F_Name VARCHAR(50),
    L_Name VARCHAR(50),
    Phone_No VARCHAR(20),
    PRIMARY KEY (Dispatcher_ID)
);

CREATE TABLE Clients (
    Client_ID INT NOT NULL AUTO_INCREMENT,
    F_Name VARCHAR(50) NOT NULL,
    L_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone_No VARCHAR(20) UNIQUE,
    PRIMARY KEY (Client_ID)
);

CREATE TABLE Drivers (
    Driver_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    License_Type VARCHAR(50) NOT NULL,
    F_Name VARCHAR(50) NOT NULL,
    L_Name VARCHAR(50) NOT NULL,
    Availability BOOLEAN NOT NULL,
    Phone_No VARCHAR(20) NOT NULL,
    Dispatcher_ID INT,
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);

CREATE TABLE Trucks (
    Truck_ID INT PRIMARY KEY AUTO_INCREMENT,
    License_Plate VARCHAR(20) NOT NULL,
    Truck_Brand VARCHAR(50) NOT NULL,
    Max_Capacity INT NOT NULL,
    Total_Driven INT NOT NULL,
    Availability BOOLEAN NOT NULL DEFAULT 1,
    Last_Service_Date DATE NOT NULL,
    Dispatcher_ID INT,
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);

CREATE TABLE Jobs (
    Job_ID INT NOT NULL AUTO_INCREMENT,
    p_address VARCHAR(100) NOT NULL,
    p_city VARCHAR(50) NOT NULL,
    p_state_province VARCHAR(50) NOT NULL,
    p_country VARCHAR(50) NOT NULL,
    p_zip_code VARCHAR(20) NOT NULL,
    p_unit_number VARCHAR(20),
    d_address VARCHAR(100) NOT NULL,
    d_city VARCHAR(50) NOT NULL,
    d_state_province VARCHAR(50) NOT NULL,
    d_country VARCHAR(50) NOT NULL,
    d_zip_code VARCHAR(20) NOT NULL,
    d_unit_number VARCHAR(20),
    Number_Of_Trucks SMALLINT NOT NULL,
    Job_Type VARCHAR(30),
    Start_Date DATETIME NOT NULL,
    End_Date DATETIME,
    job_status TINYINT(1) NOT NULL DEFAULT 0,
    Client_ID INT NOT NULL,
    Dispatcher_ID INT NOT NULL,
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID),
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID),
    PRIMARY KEY (Job_ID)
);

DELIMITER $$ 

CREATE TRIGGER UpdateEndDateOnJobStatus 
BEFORE UPDATE ON Jobs 
FOR EACH ROW 
BEGIN 
    -- Only update End_Date if job_status is set to 1 (done) 

    IF NEW.job_status = 1 AND OLD.job_status <> 1 THEN 

        SET NEW.End_Date = NOW(); 

    END IF; 
END$$ 

DELIMITER ; 

CREATE TABLE JobDetails (
    JobDetail_ID INT NOT NULL AUTO_INCREMENT,
    Truck_ID INT NOT NULL,
    Driver_ID INT NOT NULL,
    Job_ID INT NOT NULL,
    PRIMARY KEY (JobDetail_ID),
    FOREIGN KEY (Truck_ID) REFERENCES Trucks(Truck_ID),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID)
);

CREATE TABLE Expenses (
    Expense_ID INT NOT NULL AUTO_INCREMENT,
    Job_ID INT NOT NULL,
    Truck_ID INT NOT NULL,
    Fuel_Cost INT NOT NULL,
    Toll_Cost INT NOT NULL DEFAULT 0,
    Other_Expenses INT NOT NULL DEFAULT 0,
    Total_Cost INT AS (Fuel_Cost + Toll_Cost + Other_Expenses) STORED,
    Date DATE NOT NULL,
    PRIMARY KEY (Expense_ID),
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID),
    FOREIGN KEY (Truck_ID) REFERENCES Trucks(Truck_ID)
);

DELIMITER $$ 

CREATE TRIGGER before_expenses_insert 
BEFORE INSERT ON Expenses 
FOR EACH ROW 
BEGIN 
    SET NEW.Total_Cost = NEW.Fuel_Cost + NEW.Toll_Cost + NEW.Other_Expenses; 
END$$ 
CREATE TRIGGER before_expenses_update 
BEFORE UPDATE ON Expenses 
FOR EACH ROW 
BEGIN 
    SET NEW.Total_Cost = NEW.Fuel_Cost + NEW.Toll_Cost + NEW.Other_Expenses; 
END$$ 

DELIMITER ; 

CREATE TABLE DriverDocuments (
    Document_ID INT PRIMARY KEY AUTO_INCREMENT,
    Document_Type VARCHAR(50) NOT NULL,
    Driver_ID INT NOT NULL,
    Dispatcher_ID INT NOT NULL,
    File_Path VARCHAR(255) NOT NULL,
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);

CREATE TABLE ClientDocuments (
    Document_ID INT PRIMARY KEY AUTO_INCREMENT,
    Document_Type VARCHAR(50) NOT NULL,
    Job_ID INT NOT NULL,
    Dispatcher_ID INT NOT NULL,
    File_Path VARCHAR(255) NOT NULL,
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID),
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);

CREATE TABLE TruckDocuments (
    Document_ID INT PRIMARY KEY AUTO_INCREMENT,
    Document_Type VARCHAR(50) NOT NULL,
    Truck_ID INT NOT NULL,
    Dispatcher_ID INT NOT NULL,
    File_Path VARCHAR(255) NOT NULL,
    FOREIGN KEY (Truck_ID) REFERENCES Trucks(Truck_ID),
    FOREIGN KEY (Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);
