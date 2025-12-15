# bank-loan-credit-risk-analysis
End-to-end Bank Loan Analysis project using SQL, Python, Excel, Power BI, and Tableau to analyze loan performance, credit risk, MTD/MoM trends, and Good vs Bad Loans through interactive dashboards.
🏦 Bank Loan Analysis & Credit Risk Dashboard
📌 Project Overview

This project delivers an end-to-end Bank Loan Analysis solution designed to evaluate loan performance, repayment behavior, and credit risk using real-world banking data.
The analysis focuses on loan applications, funded amounts, repayments, interest rates, and DTI, presented through interactive dashboards for business decision-making.

The project integrates SQL, Python, Excel, Power BI, and Tableau to demonstrate a complete data analytics workflow from raw data to executive-level insights.

🎯 Business Objectives

Analyze overall loan portfolio performance

Track MTD (Month-to-Date) and MoM (Month-over-Month) trends

Identify Good Loans vs Bad Loans and credit risk exposure

Understand borrower behavior through segmentation analysis

Enable data-driven lending and risk assessment decisions

🗂️ Dataset Description

The dataset contains detailed loan-level information, including:

Loan application details

Funded amount and amount received

Loan status (Fully Paid, Current, Charged Off)

Interest rate and Debt-to-Income (DTI)

Borrower attributes such as state, purpose, grade, sub-grade, employment length, and home ownership

Issue date and installment details

🛠️ Tools & Technologies Used

SQL (MySQL) – Data querying, aggregation, KPI calculations

Python – Data cleaning, preprocessing, and validation

Excel – Data inspection, reconciliation, and cross-verification

Power BI – Interactive dashboards and data visualization

Tableau – Advanced visual analytics and storytelling

🔄 Project Workflow

Data Ingestion

Imported raw loan data into SQL and Excel for inspection

Data Cleaning & Transformation

Standardized date formats and numeric fields

Handled missing and inconsistent values

Validated metrics across SQL, Python, and Excel

SQL Analysis

Calculated key KPIs such as:

Total Loan Applications

Total Funded Amount

Total Amount Received

Average Interest Rate

Average DTI

Implemented MTD and PMTD analysis

Performed Good vs Bad Loan classification

Generated loan status, geographic, and segmentation summaries

Data Modeling

Structured clean datasets for reporting

Ensured consistency across Power BI and Tableau

Dashboard Development

Built multi-page dashboards:

Summary – Portfolio KPIs and Good vs Bad Loans

Overview – Trends, geography, and segmentation

Details – Transaction-level drill-down analysis

📊 Key KPIs & Metrics

Total Loan Applications: 38.6K+

Total Funded Amount: $435.8M

Total Amount Received: $473.1M

Average Interest Rate: ~12%

Average DTI: ~13.3%

Good Loans: 86.2%

Bad Loans (Charged Off): 13.8%

📈 Dashboard Highlights

KPI cards with MTD & MoM performance

Good Loan vs Bad Loan comparison using donut charts

Monthly trend analysis for funded and received amounts

State-level geographic maps for risk and performance insights

Loan segmentation by:

Purpose

Term (36 vs 60 months)

Employee length

Grade & sub-grade

Home ownership

Detailed transaction-level tables with drill-through capability

<img width="802" height="455" alt="Screenshot 2025-12-15 114507" src="https://github.com/user-attachments/assets/cf45cf14-663e-4a25-b4ae-7029f453a443" />
<img width="877" height="462" alt="Screenshot 2025-12-15 114445" src="https://github.com/user-attachments/assets/9400a07d-19e2-4883-8179-6f5b9279e856" />
<img width="1549" height="838" alt="Screenshot 2025-12-15 113856" src="https://github.com/user-attachments/assets/02851ccb-c591-4d79-b024-19060b27c1e0" />



💡 Key Insights

Majority of loans fall under Good Loan category (86.2%), indicating a healthy portfolio

Debt consolidation and credit card loans contribute significantly to total funded and received amounts

Longer employment length borrowers show higher funded and repayment volumes

Geographic analysis reveals concentration of loan activity in specific states

Charged-off loans exhibit higher interest rates and DTI, highlighting risk patterns

📁 Repository Structure
Bank-Loan-Analysis/
│
├── data/
│   ├── bank_loan_data.csv
│
├── sql/
│   ├── bank_loan_analysis.sql
│
├── dashboards/
│   ├── PowerBI_Report.pbix
│   ├── Tableau_Dashboard.twbx
│
├── excel/
│   ├── Bank_Loan_Report.xlsx
│
├── screenshots/
│   ├── summary_dashboard.png
│   ├── overview_dashboard.png
│   ├── details_dashboard.png
│
└── README.md

🚀 How to Use This Project

Review SQL scripts to understand KPI and segmentation logic

Open Power BI or Tableau files to explore interactive dashboards

Use filters and slicers to perform custom analysis

Refer to Excel files for raw data validation

📌 Conclusion

This project demonstrates a complete data analytics lifecycle, combining technical skills with business understanding to deliver actionable insights in the banking and finance domain. It showcases strong proficiency in SQL, BI tools, and data visualization, making it highly relevant for Data Analyst and Business Analyst roles.

📬 Contact

Name: Your Name
Role: Aspiring Data Analyst
LinkedIn: Add your LinkedIn URL
GitHub: This repository
