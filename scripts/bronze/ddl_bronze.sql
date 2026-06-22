
/*
===========================================================
 Project: Modern Data Warehouse - Bronze Layer Setup
 Author: Anannya Tiwari
 Description:
    This script creates the Bronze layer tables for the 
    data warehouse using SQL Server

    The Bronze layer stores raw ingested data from 
    source systems (CRM and ERP) without transformation.

    It includes:
    - CRM customer, product, and sales data
    - ERP location, customer, and product category data

    Each table is dropped if it already exists to allow 
    clean re-runs of the script.

    Schema: bronze
===========================================================
*/





if object_id('bronze.crm_cust_info','U') is not null
DROP TABLE bronze.crm_cust_info;
create table bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gender NVARCHAR(50),
cst_create_date DATE
);
if object_id('bronze.crm_prd_info','U') is not null
DROP TABLE bronze.crm_prd_info;
create table bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_name NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATETIME,
prd_end_dt DATETIME
);
if object_id('bronze.crm_sales_details','U') is not null
DROP TABLE bronze.crm_sales_details;
create table bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);
if object_id('bronze.erp_loc_a101','U') is not null
DROP TABLE bronze.erp_loc_a101;
create table bronze.erp_loc_a101(
cid NVARCHAR(50),
country NVARCHAR(50)
);
if object_id('bronze.erp_cust_az12','U') is not null
DROP TABLE bronze.erp_cust_az12;
create table bronze.erp_cust_az12(
cid NVARCHAR(50),
bdate DATE,
gen NVARCHAR(50)
);
if object_id('bronze.erp_px_cat_g1v2','U') is not null
DROP TABLE bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2(
id NVARCHAR(50),
cat NVARCHAR(50),
subcat NVARCHAR(50),
maintenance NVARCHAR(50)
);
