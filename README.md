
# 🚀 Modern Data Warehouse with SQL Server

![SQL Server](https://img.shields.io/badge/Database-SQL%20Server-red)
![Data Engineering](https://img.shields.io/badge/Domain-Data%20Engineering-blue)
![ETL](https://img.shields.io/badge/Process-ETL-green)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

---

## 📌 Overview

This project demonstrates the design and implementation of a **modern data warehouse** using **SQL Server**, following a **Medallion Architecture (Bronze, Silver, Gold layers)**.

It simulates a real-world data engineering pipeline that transforms raw data into **clean, structured, and analytics-ready datasets** suitable for reporting and business insights.

---

## 🧱 Architecture

Raw Data → Bronze → Silver → Gold → Analytics
### 🔹 Bronze Layer
- Stores raw data without transformations  
- Acts as the source of truth  

### 🔹 Silver Layer
- Cleans and standardizes data  
- Handles nulls, duplicates, and inconsistencies  

### 🔹 Gold Layer
- Business-level transformations  
- Star schema modeling (Fact & Dimension tables)  
- Optimized for analytics and reporting  

---

## ⚙️ Data Model (Star Schema)

### ✅ Dimension Tables:
- `dim_customers`
- `dim_products`

### ✅ Fact Table:
- `fact_sales`

## 🛠️ Tech Stack

| Tool | Purpose |
|------|--------|
| SQL Server Express | Database engine |
| SSMS | Database management and querying |
| SQL | ETL, transformations, analytics |

---

## 📂 Project Structure
📁 sql-data-warehouse-project
│
├── 📁 scripts
│   ├── 📁 bronze
│   │   ├── ddl_bronze.sql
│   │   └── proc_load_bronze.sql
│   │
│   ├── 📁 silver
│   │   ├── ddl_silver.sql
│   │   └── load_silver.sql
│   │
│   ├── 📁 gold
│   │   └── ddl_gold.sql
│   │
│   └── init_database.sql
│
├── 📁 datasets
│   └── raw_data.csv
│
├── 📁 docs
│
├── README.md
└── LICENSE

