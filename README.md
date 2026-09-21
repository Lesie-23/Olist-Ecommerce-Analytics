# Olist-Ecommerce-Analytics | SQL & Power BI

**How can a marketplace generate R$13.59M in revenue from 96K customers when nearly 97% of customers made only one purchase?**

This project analyzes the Olist marketplace using SQL and Power BI. It looks at customer retention, revenue, delivery performance, and customer satisfaction to understand how the marketplace is performing and where further analysis may be needed.


> **The analysis flow:** Overview shows the overall business picture → Customer Insights investigates retention and customer value → Logistics & Operations examines delivery and freight performance → Products & Reviews looks at customer satisfaction and its relationship with delivery performance.

## Problem Statement:

Olist is a Brazilian e-commerce marketplace serving customers across multiple regions and product categories. Despite generating R$13.59M in revenue from approximately 96K customers, nearly 97% of customers made only one purchase during the period analyzed.

This raises concerns around customer retention and the consistency of the customer experience, particularly as delivery performance, freight costs, and review scores vary across regions and product categories. Olist needs to understand these patterns to identify the key areas affecting customer value, delivery performance, and satisfaction.

The business needs to answer five questions:


- **How strong is customer retention?**
- **Which customers and segments contribute the most value?**
- **Which states experience higher delivery delays and freight costs?**
- **Are longer delivery delays associated with lower customer satisfaction?**
- **Which product categories have lower review scores?**

---

## Dataset

**Source:** Brazilian E-Commerce Public Dataset — Olist  
**Period:** September 2016 – October 2018  
**Customers:** ~96K  
**Orders:** ~99K  
**Revenue analyzed:** R$13.59M  
**Source tables:** 9 CSV files

### Source Tables

- `olist_orders`
- `olist_order_items`
- `olist_customers`
- `olist_products`
- `olist_order_payments`
- `olist_order_reviews`
- `olist_sellers`
- `olist_product_category_info`
- `geolocation`

**Data preparation:**
- **Loaded into MySQL:** 9 source tables
- **Imported into Power BI:** 8 source tables
- **Created in Power BI:** 1 customer-level RFM table

The `geolocation` table was excluded from the Power BI model because it was not required for the final analysis.

--- 

## Tools

**SQL · MySQL · Power BI Desktop · Power Query · DAX**

- **SQL / MySQL:** Data analysis and business-focused querying
- **Power Query:** Data transformation, cleaning, and preparation
- **Power BI / DAX:** Data modeling, measures, segmentation, and dashboard development

---
## Technical Approach

- **Data loading:** Loaded all 9 Olist source tables into MySQL and connected MySQL to Power BI for analysis.
- **Data modeling:** Used 8 source tables in Power BI, along with a dedicated Date table for time-based analysis and a customer-level RFM table for segmentation.
- **Customer analysis:** Used `customer_unique_id` as the customer-level identifier to analyze repeat purchasing, customer behavior, and customer value.
- **RFM analysis:** Created a customer-level RFM table containing Recency, Frequency, Monetary value, RFM scores, and customer segments.
- **Data transformation:** Used Power Query to merge review information into the order-level data.
- **DAX:** Created **35 measures** covering revenue, orders, AOV, repeat purchase rate, delivery performance, review scores, and other dashboard metrics.
- **SQL analysis:** Used MySQL to analyze revenue trends, customer spending, seller performance, retention, delivery performance, and customer satisfaction.
- **Dashboard design:** Built Power BI pages covering the overall business view, customer insights, logistics and operations, and product performance and customer reviews.
---

## SQL Analysis

1. Top 5 Customers by Total Payment Value
2. Top 3 Sellers by Revenue Within Each Seller State
3. Monthly Revenue & Running Total
4. Customers Spending Above Average
5. Second-Highest Revenue Category by Seller State
6. Revenue by Product Category
7. Monthly Revenue Trend
8. Customer Retention
9. Delivery Performance by State
10. Delivery & Customer Satisfaction
--- 

##  Dashboard Pages

### Data Model
<img width="1383" height="745" alt="Data Model" src="https://github.com/user-attachments/assets/b7cfe03a-5c8b-43c4-b9cc-70d826bb6661" />





### Home
The Home page provides navigation across the main sections of the dashboard.
<img width="1413" height="792" alt="Home page" src="https://github.com/user-attachments/assets/8202e5d3-796d-4500-a87d-1ce19a12d2ec" />



### Overview
The Overview page provides an executive view of revenue, customer retention, order performance, and delivery performance.
<img width="1372" height="769" alt="overview page" src="https://github.com/user-attachments/assets/a73316f8-9161-43f8-a0eb-75eee939d941" />




### Customer Insights

Nearly 97% of the 96K customers made only one purchase during the period analyzed. This page examines customer retention and value through purchase behavior, RFM segmentation, and customer revenue patterns.

RFM analysis segments customers based on:

- **Recency** – how recently the customer purchased
- **Frequency** – how often the customer purchased
- **Monetary** – how much the customer spent
The analysis helps identify differences in customer value and purchasing behavior.
<img width="1377" height="764" alt="Customer Insights" src="https://github.com/user-attachments/assets/9903e603-e832-4043-9dc2-4662dbcad9f9" />




### Logistics & Operations

The overall on-time delivery rate is 90.44%, but delivery performance varies considerably across states. For example, RJ has an 11.63% late-delivery rate compared with 4.36% in SP despite comparable order volumes. Freight costs also vary substantially across states, highlighting differences in delivery performance and logistics costs.
<img width="1371" height="763" alt="Logistics   Operations page" src="https://github.com/user-attachments/assets/6a775721-a00b-45c4-a702-c941f60b2ff5" />



### Products & Reviews

Customer satisfaction varies across product categories, with Services & Security averaging 2.5/5 compared with the overall 4.1/5 average. Review scores also tend to decline across longer delivery-delay segments, showing an association between delivery performance and customer satisfaction.
<img width="1381" height="766" alt="Products   Reviews page" src="https://github.com/user-attachments/assets/afac52ab-ff83-413b-9683-7ad530005ee4" />

---

## Key Insights

1. **Customer retention remains low:** Nearly **97% of the 96K customers made only one purchase**, resulting in a **3.12% repeat purchase rate**. Only **2.76% of customers made two purchases**, showing that repeat purchasing is limited.

2. **Revenue is concentrated across a few states:** **São Paulo generated R$5.2M in revenue**, compared with **R$1.8M from Rio de Janeiro**, the second-highest customer state. This shows a significant concentration of revenue in the leading states.

3. **Delivery performance varies considerably by state:** While the overall **on-time delivery rate was 90.44%**, state-level performance differed substantially. **AL had the lowest on-time rate at 75.54%**, while among higher-volume states, **RJ recorded an 11.63% late-delivery rate compared with 4.36% in SP**.

4. **Freight costs differ substantially across seller states:** The overall average freight cost was **R$22.82 per order**, while **RO recorded the highest average at R$50.91**, followed by **CE at R$47.91** and **PB at R$41.37**.

5. **Customer satisfaction varies across categories and delivery experiences:** The overall average review score was **4.1/5**, while **Services & Security averaged 2.5/5**. Review scores also tended to decline across longer delivery-delay segments, showing an association between delivery performance and customer satisfaction.

---

## Recommendations

- Analyze repeat-purchase behavior by **product category, customer location, RFM segment, and first-order experience** to identify patterns among returning customers.

- Examine revenue concentration across **states, customer count, order volume, and average order value** to understand the factors driving geographic differences.

- Compare **seller location, dispatch times, delivery routes, and delivery performance** across states with lower and higher on-time delivery rates.

- Investigate the drivers of higher freight costs in states such as **RO, CE, and PB**, including **shipping distance, seller distribution, and product characteristics**.

- Investigate lower-rated categories such as **Services & Security** at the **seller and product level**, alongside review sentiment and delivery experience, to identify potential drivers of lower customer satisfaction.

---

## What This Project Demonstrates

This project uses **SQL and Power BI** to analyze an e-commerce marketplace across customer behavior, revenue, delivery performance, freight costs, and customer satisfaction.

Starting with a **3.12% repeat purchase rate**, the analysis connects customer purchasing behavior, RFM segmentation, geographic performance, logistics, and reviews to identify key patterns across the marketplace.

**The analysis moves from “What is happening?” to “Where are the differences?” to “What should be investigated next?”**

---

## About
   Lesie Fernandes
🔗 [LinkedIn](#) | [Live Dashboard →](https://app.powerbi.com/view?r=eyJrIjoiNDc4OWFmYmQtNGFhMC00MWNmLThjYjktOWNiMzBjMzNkZDIzIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)
