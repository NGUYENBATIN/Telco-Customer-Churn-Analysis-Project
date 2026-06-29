-- =========================================================================
-- 1. DATABASE INITIALIZATION & TABLE STRUCTURE
-- =========================================================================

-- Create a new database
CREATE DATABASE telco_churn;
GO

-- Select the newly created database to work with
USE telco_churn;
GO

-- Check and drop the existing table if it already exists to prevent duplication errors
IF OBJECT_ID('customers', 'U') IS NOT NULL 
    DROP TABLE customers;
GO

-- Create the customers table with standard SQL Server data structures
CREATE TABLE customers (
    customerID VARCHAR(20) PRIMARY KEY,
    gender NVARCHAR(10),
    SeniorCitizen INT,
    Partner NVARCHAR(5),
    Dependents NVARCHAR(5),
    tenure INT,
    PhoneService NVARCHAR(5),
    MultipleLines NVARCHAR(20),
    InternetService NVARCHAR(20),
    OnlineSecurity NVARCHAR(20),
    OnlineBackup NVARCHAR(20),
    DeviceProtection NVARCHAR(20),
    TechSupport NVARCHAR(20),
    StreamingTV NVARCHAR(20),
    StreamingMovies NVARCHAR(20),
    Contract NVARCHAR(20),
    PaperlessBilling NVARCHAR(5),
    PaymentMethod NVARCHAR(30),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges VARCHAR(20), -- Keep as VARCHAR initially to accommodate rows with empty spaces ' '
    Churn NVARCHAR(5)
);
GO

-- =========================================================================
-- 2. DATA INSPECTION & CLEANING OPERATIONS (POST-IMPORT)
-- =========================================================================

-- Switch to the Target Database
USE telco_churn;
GO

-- View all existing data within the table
SELECT * FROM customers;

-- Check if there are any records with a value of '0'
SELECT * FROM customers WHERE TotalCharges = '0';

-- Inspect records containing blank spaces or NULL values for cleaning preparation
SELECT * FROM customers WHERE TotalCharges = ' ' OR TotalCharges IS NULL;

-- Data Standardizing: Convert blank spaces/NULLs to a '0' string to prevent type-casting errors in Python
UPDATE customers 
SET TotalCharges = '0' 
WHERE TotalCharges = ' ' OR TotalCharges IS NULL;
GO

-- =========================================================================
-- 3. ADMINISTRATIVE COMMANDS (USE ONLY FOR RESETTING PURPOSES)
-- =========================================================================

-- Wipe all data from the table (preserves the table structure and schema)
-- TRUNCATE TABLE customers;

-- Completely remove the table from the database
-- DROP TABLE customers;