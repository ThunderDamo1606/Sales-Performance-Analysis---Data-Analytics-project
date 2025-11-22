# ⭐ Sales Performance Analysis Project 🚀

![Project Banner](https://via.placeholder.com/1200x250?text=Sales+Performance+Analysis+Project)

<p align="center">

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-yellow?logo=pandas)
![PowerBI](https://img.shields.io/badge/PowerBI-Dashboard%20Design-brightgreen?logo=powerbi)
![MySQL](https://img.shields.io/badge/MySQL-Queries-orange?logo=mysql)
![Status](https://img.shields.io/badge/Project-Completed-success)

</p>

## 📘 Overview

---

### 📌 Table of Contents

1. [Overview](#-overview)
2. [Project Objectives](#-project-objectives)
3. [Datasets Used](#-datasets-used)
4. [Tools & Technologies](#️-tools--technologies)
5. [Project Structure](#-project-structure)
6. [SQL Analysis Summary](#-sql-analysis-summary)
7. [Pandas Analysis Summary](#-pandas-analysis-summary)
8. [Power BI Dashboard Summary](#-power-bi-dashboard-summary)
9. [Key Insights](#-key-insights)
10. [Conclusion](#-conclusion)
11. [Author](#-author)

---

This project performs a detailed **Sales Performance Analysis** using **SQL**, **Pandas**, and **Power BI**. It is designed according to **industry standards**, covering complete data analysis workflow including data cleaning, transformation, business KPI creation, and dashboard development.

The study uses multiple datasets and produces actionable insights for decision-makers.

---

## 🎯 Project Objectives

---

### **1. SQL Analysis**

* Retrieve total sales per region
* Find the top 5 best‑selling products
* Calculate monthly revenue
* Identify repeat customers
* Find average order value per region
* Determine peak sales hour
* Rank products by sales within each category

### **2. Pandas Analysis (Python)**

* Load and inspect datasets
* Handle missing values
* Perform data cleaning and type conversions
* Generate customer‑level analytics
* Calculate moving average sales
* Segment customers by spending categories
* Calculate product return rate
* Identify top 10 high‑value (LTV) customers

### **3. Power BI Dashboarding**

* Create sales insights dashboard
* Category performance charts
* Customer segmentation visuals
* Sales by region heatmap
* Sales contribution pie chart
* Sales rep performance visual
* KPI cards: Revenue, Orders, Repeat Rate, Avg Basket Size

---

## 📂 Datasets Used

---

1. `List of Orders.csv` – Order header details (Customer, State, City, Date)
2. `Order Details.csv` – Line‑item transactional details (Category, Sub‑Category, Amount, Profit, Quantity)
3. `Sales Target.csv` – Monthly or category‑wise targets for performance comparison
4. `query1.csv` – Final cleaned and merged dataset used for Pandas tasks and Power BI modeling

---

## 🛠️ Tools & Technologies

---

* **Python 3.10+** (Pandas, NumPy, Matplotlib, Seaborn)
* **Power BI Desktop**
* **MySQL / SQL Workbench**
* **Jupyter Notebook**

---

## 📁 Project Structure

---

```
Sales_Performance_Analysis
│
├── Data 📊
│   ├── List of Orders.csv
│   ├── Order Details.csv
│   ├── Sales Target.csv
│   ├── query1.csv
│   └── query1.xlsx
│
├── notebooks 📘
│   └── sales_analysis.ipynb
│
├── sql_queries 🧩
│   └── analysis_queries.sql
│
├── powerbi 📊
│   └── Sales_Dashboard.pbix
│
└── README.md 📄
```

---

```
Sales_Performance_Analysis
│
├── Data
│   ├── List of Orders.csv
│   ├── Order Details.csv
│   ├── Sales Target.csv
│   ├── query1.csv
│   └── query1.xlsx
│
├── notebooks
│   └── sales_analysis.ipynb
│
├── sql_queries
│   └── analysis_queries.sql
│
├── powerbi
│   └── Sales_Dashboard.pbix
│
└── README.md
```

---

## 🧩 SQL Analysis Summary

---

### 1. Total Sales per Region

Aggregates total LineTotal grouped by geographic region.

### 2. Top 5 Best‑Selling Products

Based on quantity sold or total revenue.

### 3. Monthly Revenue

Uses DATE_FORMAT or EXTRACT to aggregate monthly totals.

### 4. Repeat Customers

Identifies customers with 2+ transactions.

### 5. Peak Sales Hour

Extracts HOUR() from Order_Date.

### 6. Product Ranking by Category

Uses window functions or ordered GROUP BY.

---

## 🐍 Pandas Analysis Summary

---

### 1. Load DataFrames

All datasets loaded with correct paths and DataFrame names.

### 2. Data Cleaning

* Converted date columns
* Fixed missing values
* Converted numeric fields
* Created `LineTotal`, `YearMonth`, and other calculated fields

### 3. Customer Sales Analysis

Generated total revenue per customer for segmentation.

### 4. Moving Average Revenue

Calculated a 3‑month moving average for trend analysis.

### 5. Customer Segmentation

Divided customers into **Low, Medium, High** spenders.

### 6. Product Return Rate

Calculated based on negative profit transactions.

### 7. Top 10 LTV Customers

Ranked customers based on lifetime value.

---

## 📊 Power BI Dashboard Summary

---

### Dashboards Created

1. **Sales Overview Dashboard**
2. **Category & Sub‑Category Analysis**
3. **Customer Insights Dashboard**
4. **Sales Rep Performance Dashboard**
5. **Target Achievement Dashboard**

### Visuals Included

* KPI Cards
* Line charts (monthly trends)
* Bar/Column charts
* Pie charts
* TreeMap
* Filled Map (State‑wise)
* Heatmap (Region vs Month)
* Gauge chart (Target Achievement)

---

## 🔍 Key Insights

---

* Identified high‑value customers contributing majority of revenue
* Found underperforming product categories
* Discovered peak sales hours and sales seasonality
* Mapped regional performance differences
* Evaluated target achievement gaps
* Determined product return trends affecting profit

---

## 🏁 Conclusion

---

This project follows a complete, industry‑grade analytics pipeline. It demonstrates:

* Strong SQL querying abilities
* Effective data cleaning and feature engineering using Pandas
* Professional dashboard creation in Power BI
* Business‑ready insights that support decision‑making

The project is suitable for **Data Analyst**, **Business Analyst**, and **BI Developer** portfolios.

---

## 👤 Author

---

### Damodar Sadavarte

- 📧 **Email:** [damodarsadavarte2000@gmail.com](mailto:damodarsadavarte2000@gmail.com)
- 🔗 **LinkedIn:** [www.linkedin.com/in/damodar-sadavarte](https://www.linkedin.com/in/damodar-sadavarte)
- 📊 **Data Analyst – SQL | Python | Power BI | ML & AI**

---
