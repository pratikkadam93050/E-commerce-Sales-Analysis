**📊 E-commerce Sales Performance Dashboard**

**🔍 Project Overview**

This project is an end-to-end E-commerce Sales Dashboard built in Power BI to analyze revenue performance, customer behavior, discount impact, and overall business efficiency.
The analysis focuses on understanding how the business scaled from 2021 to 2023, identifying a key issue in 2022 where growth slowed down due to heavy dependency on discounts, and how it recovered in 2023 through better category and pricing strategies.


**🎯 Purpose**
The goal of this project was to:

Track Net Revenue and growth trends
Understand the impact of discounts and offers
Identify top-performing categories and locations
Analyze revenue leakage and inefficiencies
Study customer demographics contributing to revenue

**🛠️ Tech Stack**
Power BI – Dashboard creation and visualization
Power Query (ETL) – Data cleaning and transformation
DAX – Measures and KPIs (YoY Growth, AOV, Contribution %, Leakage Ratio)
MySQL Workbench – Data cleaning and preprocessing using SQL
Excel / CSV – Data source
Data Modeling – Relationships and data structuring

**📂 Data Source**
A simulated E-commerce dataset containing:
Transaction-level sales data
Net revenue (after discount)
Discount details
Product categories
Location (city-level)
Customer demographics (age, gender)

**🧹 Data Cleaning & Preparation**
Data cleaning was done using MySQL Workbench and Power Query before building the dashboard.
Key steps:
Created a staging table for safe data transformation
Renamed columns for better readability
Replaced blank values with NULL
Checked for duplicate transactions (none found)
Standardized text fields (uppercase formatting)
Performed data validation checks
Flagged invalid records where discount exceeded gross amount

**📸 Snapshots**

E-commerce Sales Performance Dashboard - 
Year-over-Year Sales Analysis - 
Offer Performance Analysis - 
Geographical Sales Analysis - 
Revenue Leakage & Profit Impact Analysis - 
Customer Demographics Analysis - 


**📊 Dashboard Walkthrough**
**1. Sales Overview**
Net Revenue, Total Orders, AOV
Revenue trend over time
Category contribution
Location-wise performance

Gives a quick snapshot of overall business performance.

**2. YOY Analysis**
Year-over-Year revenue comparison
Growth % by category and location

Helps understand which areas are growing and which are slowing down.

**3. Offer & Discount Analysis**
Revenue from discounted vs non-discounted sales
Average discount %
Contribution of offers to revenue

Shows how dependent the business is on discounts.

**4. Geographical Analysis**
Revenue by location
Contribution % by city
AOV by location
Map view

Highlights high-performing and high-value cities.

**5. Revenue Leakage Analysis**
Total discount amount
Discount % of revenue
Leakage ratio trend

Focuses on identifying profit loss areas.

**6. Customer Demographics**
Revenue by age group
Revenue by gender
Category preference

Helps in understanding customer segments.

**📈 Key Insights**
**1. Discount Dependency (2022)**
Revenue growth dropped to 1.63% in 2022
Around 46.9% of revenue came from discounted sales

Observation: Growth was heavily dependent on discounts, which is not sustainable.
What can be done: Move towards loyalty programs and targeted offers instead of blanket discounts.

**2. Recovery in 2023**
Revenue growth improved to 7.6%
Pet Care category grew by 120%

Observation: Some categories perform well even with lower discounts.
What can be done: Focus more on such high-demand categories to drive growth.

**3. Location-wise Contribution**
Top 3 cities contribute ~55% of total revenue
Cities like Pune and Lucknow have higher AOV (~3.1K)

Observation: High sales volume doesn’t always mean high profitability.
What can be done: Target high-AOV cities for better returns.

**4. Leakage Reduction**
Leakage ratio improved from 0.74 (2022) to 0.32 (2023)
Observation: Reducing high-discount orders improved profitability.

**5. Customer Insights**
25-45 age group contributes ~67% of revenue
Category preferences differ across genders

Observation: There is scope for better targeted marketing.


🚀 Key Learnings
Worked on an end-to-end data analytics project
Used SQL for data cleaning and validation
Built interactive dashboards in Power BI
Applied DAX for business KPIs
Learned how to convert data into practical business insights
✅ Conclusion

This project helped me understand how data can be used to identify business problems, track performance, and suggest improvements. It also improved my skills in SQL, Power BI, and data storytelling.

🔥 Highlight

Identified a 46.9% dependency on discounts as a key reason for revenue stagnation and analyzed how optimizing categories and discount strategies improved growth to 7.6% in 2023.
