# QuickCart — E-commerce Customer & Business Intelligence

An end-to-end e-commerce analytics project using **Excel, SQL, Power BI and Generative AI** to transform order-level data into actionable business insights.

The project follows the workflow:

**Data Preparation → Exploration → SQL Analysis → Power BI Dashboards → GenAI Insights → Business Recommendations**

---

## 🎯 Business Problem

QuickCart wants to understand its business performance across sales, profitability, customer segments, returns and delivery experience.

This project focuses on answering key business questions:

* Which categories and cities generate the most sales?
* Which sales channels generate the highest profit?
* Which customer segments have higher order value?
* Where are returns concentrated?
* How does delivery performance relate to customer ratings?
* Which areas require further business investigation?

---

## 📊 Dataset

The QuickCart dataset contains **12,000 e-commerce orders**.

Key fields include:

* Order ID
* Order Date
* City
* Category
* Sales Channel
* Customer Segment
* Payment Method
* Order Status
* Quantity
* Unit Price
* Gross Sales
* Discount
* Net Sales
* Cost
* Profit
* Delivery Days
* Customer Rating

The Excel workbook contains the raw data, cleaned data, data dictionary, exploration and KPI summary.

---

# 🧹 1. Excel — Data Cleaning & Exploration

Excel was used as the initial data preparation and exploration layer.

### Key Activities

* Raw data inspection
* Data cleaning
* Data validation
* Data dictionary creation
* Exploratory analysis
* KPI preparation

### Workbook

[View Excel Analysis](excel/QuickCart_Ecommerce_Analytics.xlsx)

---

# 🗄️ 2. SQL — Business Analysis

MySQL-compatible SQL was used to perform structured business analysis on the QuickCart order data.

### Analysis Performed

1. Executive KPIs
2. Monthly sales and profit
3. Category performance
4. City performance
5. Sales-channel comparison
6. Customer-segment value
7. Return rate by category
8. Delivery and customer satisfaction
9. Top city-category combinations
10. High-value orders

### SQL File

[View SQL Analysis](sql/QuickCart_SQL_Analysis_Validated.sql)

---

# 📈 3. Power BI — Business Intelligence Dashboards

Two Power BI dashboards were created to analyze QuickCart's business performance from executive, customer and operational perspectives.

## Dashboard 1 — Executive Overview

The executive dashboard provides a high-level view of overall business performance.

### KPIs

* Total Orders
* Net Sales
* Total Profit
* Profit Margin
* Average Order Value
* Return Rate

### Visual Analysis

* Monthly Net Sales Trend
* Net Sales by Category
* Net Sales by City
* Profit by Sales Channel

### Filters

* Order Date
* City
* Category
* Customer Segment
* Sales Channel

### Dashboard Preview

![QuickCart Executive Overview](powerbi/screenshots/powerbi-dashboard-1-executive-overview.png)

---

## Dashboard 2 — Customer & Operations Analysis

The second dashboard focuses on customer behavior and operational performance.

### KPIs

* Returned Orders
* Cancelled Orders
* Average Delivery Days
* Average Customer Rating

### Visual Analysis

* Order Status Distribution
* Net Sales by Customer Segment
* Orders by Delivery Days
* Orders by Customer Rating

### Dashboard Preview

![QuickCart Customer & Operations](powerbi/screenshots/powerbi-dashboard-2-customer-operations.png)

---

## 📁 Power BI File

[View Power BI Dashboard File](powerbi/QuickCart_PowerBI_Dashboards.pbix)

> The repository also includes dashboard screenshots for quick viewing without requiring Power BI Desktop.

---

# 📌 Key Business Metrics

| KPI                     |         Result |
| ----------------------- | -------------: |
| Total Orders            |         12,000 |
| Net Sales               | ₹55,045,288.81 |
| Total Profit            | ₹19,014,323.41 |
| Profit Margin           |         34.54% |
| Return Rate             |          9.10% |
| Average Delivery Days   |           3.27 |
| Average Customer Rating |       4.06 / 5 |

---

# 🔎 Key Analytical Findings

### 1. Category Performance

**Electronics** generated the highest category sales at **₹26,791,332.53**.

### 2. City Returns

**Mumbai** recorded the highest city-level return rate at **10.06%**.

### 3. Sales Channel Profitability

The **Mobile App** generated the highest total profit at **₹9,530,963.63**.

### 4. Delivery & Customer Rating

The dataset shows an observed correlation of approximately **-0.202** between delivery days and customer rating.

This represents an observed association in the dataset and does not establish causation.

---

# 🤖 4. GenAI Insight Layer

GenAI was used as an **interpretation layer on top of validated SQL and Power BI results**.

It was not used to generate the underlying analytical calculations.

### GenAI Use Cases

* Executive summaries
* Root-cause exploration
* Business investigation questions
* Structured action plans
* Natural-language business Q&A

### Example Questions

* Which category generated the most sales?
* Which city has the highest return rate?
* Does longer delivery appear associated with lower ratings?
* Which sales channel has the highest profit?

### GenAI Documentation

[View GenAI Insights](genai/QuickCart_GenAI_Insights.md)

---

# 🔄 Project Workflow

```text
QuickCart Dataset
       ↓
Excel
Cleaning & Exploration
       ↓
SQL
Business Analysis
       ↓
Power BI
Executive + Customer/Operations Dashboards
       ↓
GenAI
Insight & Recommendation Layer
       ↓
Business Questions & Recommendations
       ↓
GitHub
Documentation
```

---

# 📁 Repository Structure

```text
quickcart-ecommerce-analytics/
│
├── README.md
│
├── excel/
│   └── QuickCart_Ecommerce_Analytics.xlsx
│
├── sql/
│   └── QuickCart_SQL_Analysis_Validated.sql
│
├── powerbi/
│   ├── QuickCart_PowerBI_Dashboards.pbix
│   │
│   └── screenshots/
│       ├── powerbi-dashboard-1-executive-overview.png
│       └── powerbi-dashboard-2-customer-operations.png
│
├── genai/
│   └── QuickCart_GenAI_Insights.md
│
└── documentation/
    └── methodology.md
```

---

# 🛠️ Technology Stack

| Technology      | Purpose                                              |
| --------------- | ---------------------------------------------------- |
| **Excel**       | Data cleaning, exploration and KPI preparation       |
| **SQL / MySQL** | Business analysis and aggregation                    |
| **Power BI**    | Interactive business intelligence dashboards         |
| **GenAI**       | Insight generation, business Q&A and recommendations |
| **GitHub**      | Project documentation and version control            |

---

# 💡 Business Value

QuickCart demonstrates an end-to-end analytics workflow that transforms transactional data into structured business information.

The project connects:

**Data Preparation → Querying → Visualization → Interpretation**

The analysis helps identify business performance patterns, areas requiring investigation and metrics that can be monitored by business teams.

---

# 👤 Skills Demonstrated

**Excel • SQL • Data Analysis • Power BI • DAX • Data Visualization • Business Intelligence • Generative AI • GitHub**
