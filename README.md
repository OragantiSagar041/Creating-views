# Task 7: Creating Views in SQL

## 📌 Objective
Learn to create and use **SQL Views** for abstraction, reusability, and security.

## 🛠 Tools
- DB Browser for SQLite / MySQL Workbench

## 📂 What’s Included
- **SQL Script**:
  - Creates `departments` and `employees` tables with sample data.
  - Defines 3 views:
    - `employee_summary` → basic info without salary
    - `it_employees` → filters only IT department staff
    - `employee_department` → joins employees with their department names

## 🚀 Usage
1. Run the SQL script in your DB tool.
2. Query views like tables:
   ```sql
   SELECT * FROM employee_summary;
   SELECT * FROM it_employees;
   SELECT * FROM employee_department;

