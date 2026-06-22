
/*
===========================================================
 Procedure: bronze.load_bronze
 Layer: Bronze (Raw Data Load)
 Author: Anannya Tiwari

 Description:
    This stored procedure loads raw data into the Bronze layer 
    from CSV source files (CRM and ERP systems).

    Steps:
    1. Truncate existing data (full reload)
    2. Bulk load CSV files into respective tables

 Notes:
    - Assumes files are accessible from SQL Server
    - Uses BULK INSERT for high-performance ingestion
    - Designed for initial/raw data ingestion

===========================================================
*/

create or alter procedure bronze.load_bronze AS 
BEGIN

TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);
TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);
TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);

----------------------------------------------------------------

TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);

TRUNCATE TABLE bronze.erp_cust_az12;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\anatiwar\Downloads\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK 
);
END
