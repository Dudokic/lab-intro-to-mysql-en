DROP DATABASE IF EXISTS dealership;
CREATE DATABASE dealership;

USE dealership;

CREATE TABLE IF NOT EXISTS dealership.cars (
    vin VARCHAR(255) PRIMARY KEY,
    manufacturer VARCHAR(255),
    model VARCHAR (255),
    year_manu INT,
    color VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS dealership.customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(255),
    l_name VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255),
    zip_postal INT
);

CREATE TABLE IF NOT EXISTS dealership.salesperson (
    staff_id INT  AUTO_INCREMENT  PRIMARY KEY,
    f_name VARCHAR(255),
    l_name VARCHAR(255),
    store VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS dealership.Invoices (
    invoice_nr INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    vin VARCHAR(255),
    customer_id INT,
    staff_id INT,
    INDEX `idx_vin`(`vin` ASC),
    INDEX `idx_customer_id`(`customer_id` ASC),
    INDEX `idx_staff_id`(`staff_id` ASC),
    FOREIGN KEY (vin) REFERENCES dealership.cars(vin),
    FOREIGN KEY (customer_id) REFERENCES dealership.customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES dealership.salesperson(staff_id)
);