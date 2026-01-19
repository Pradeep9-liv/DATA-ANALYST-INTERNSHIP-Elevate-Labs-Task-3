# DATA-ANALYST-INTERNSHIP-Elevate-Labs-Task-3

# SQL Task 3 - Data Exploration & Analysis (Superstore Dataset)

## Objective
To perform end-to-end SQL-based data exploration and analysis on a retail Superstore sales dataset.  
The task focuses on validating imported data, writing analytical SQL queries, exporting results, and documenting outputs professionally.

---

## Tools Used
- PostgreSQL  
- pgAdmin 4  
- VS Code  
- Google Sheets (for initial data verification)

---

## Dataset Information
- Dataset Name: Superstore Sales Dataset  
- File Format: CSV  
- Total Records: 51,290 rows  

---

## Steps Performed

### 1. Database & Table Creation
- Created a new database schema in PostgreSQL.
- Designed a table structure with appropriate columns and data types to match the dataset.

---

### 2. CSV Import
- Imported the CSV file into PostgreSQL using **pgAdmin Import/Export Tool**.
- Ensured headers, delimiters, and encoding were correctly configured.

---

### 3. Data Verification & Exploration
```sql
SELECT * FROM superstore_orders LIMIT 10;
SELECT COUNT(*) FROM superstore_orders;
