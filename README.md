# Olist-Ecommerce-Analytics | SQL & Power BI

**How can a marketplace generate R$13.59M in revenue from 96K customers when nearly 97% of customers made only one purchase?**

This dashboard was built to investigate that question for the Olist marketplace. It connects customer retention, revenue, delivery reliability, and customer satisfaction to understand where performance gaps exist and what areas need further investigation.

> **The analysis flow:** Overview shows the overall business picture → Customer Insights investigates retention and customer value → Logistics & Operations examines delivery and freight performance → Products & Reviews looks at customer satisfaction and its relationship with delivery performance.

## Business Problem

Strong revenue and order volume do not necessarily mean that customers are returning or receiving a consistent experience.

For Olist, nearly 97% of customers made only one purchase during the period covered by the dataset. At the same time, delivery performance varies across states, freight costs differ considerably by geography, and review scores vary across product categories and delivery-delay segments.

The business needs to answer five questions:

- **How strong is customer retention?**
- **Which customers and segments contribute the most value?**
- **Which states experience higher delivery delays and freight costs?**
- **Are longer delivery delays associated with lower customer satisfaction?**
- **Which product categories have lower review scores?**

The dashboard was designed to give a clear view of the overall business performance, investigate the main gaps, and highlight areas that require further analysis.

---

## Dataset

Source: Brazilian E-Commerce Public Dataset — Olist
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

- **Loaded into MySQL:** 9 source tables
- **Imported into Power BI:** 8 source tables
- **Created in Power BI:** 1 customer-level RFM table

The geolocation table was excluded from the Power BI model because it was not required for the final business analysis.

--- 

## Tools

**SQL · MySQL · Power BI Desktop · Power Query · DAX**

- **SQL / MySQL:** Data analysis and business queries
- **Power Query:** Data transformation and preparation
- **Power BI / DAX:** Data modeling, measures, segmentation, and dashboard development

---
## Technical Approach

- **Data loading:** Loaded all 9 Olist source tables into MySQL and connected MySQL to Power BI for analysis.
- **Data modeling:** Used 8 imported source tables in Power BI, along with a dedicated Date table for time-based analysis and a customer-level RFM table for segmentation.
- **Customer analysis:** Used `customer_unique_id` as the customer-level identifier to analyze repeat purchasing, customer behavior, and RFM segmentation.
- **RFM analysis:** Created a dedicated RFM table containing Recency, Frequency, Monetary value, RFM scores, and customer segments.
- **Data transformation:** Used Power Query to merge review information into the order-level data.
- **DAX:** Created **35 measures** covering revenue, orders, AOV, repeat purchase rate, delivery performance, review scores, and other dashboard metrics.
- **SQL analysis:** Used MySQL to analyze revenue trends, customer spending, seller performance, retention, delivery performance, and customer satisfaction.
- **Dashboard design:** Built **5 Power BI pages** covering the overall business view, customer insights, logistics and operations, and products and reviews.

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
<img width="1357" height="757" alt="overview page" src="https://github.com/user-attachments/assets/d77de007-25c7-4474-98bc-969f174b4638" />



### Customer Insights
Nearly 97% of the 96K customers made only one purchase. This page investigates the retention gap through purchase behavior, RFM segmentation, and revenue concentration.

RFM analysis was used to segment customers based on:

- **Recency** – how recently the customer purchased
- **Frequency** – how often the customer purchased
- **Monetary** – how much the customer spent

The analysis helps identify differences in customer value and purchasing behavior.
<img width="1267" height="705" alt="Customer Insights" src="https://github.com/user-attachments/assets/270490f5-c09b-498a-a3a2-3e78c53ab981" />




### Logistics & Operations
The overall on-time delivery rate is 90.44%, but state-level performance varies considerably. RJ has an 11.63% late-delivery rate compared with 4.36% in SP at comparable order volumes, while freight costs also vary substantially across states.
<img width="1418" height="795" alt="Logistics   Operations page" src="https://github.com/user-attachments/assets/2972e1cc-171f-4d8c-882a-57e03161b4a1" />



### Products & Reviews
Customer satisfaction varies across product categories, with Services & Security averaging 2.5/5 compared with the overall 4.1/5 average. Review scores also tend to decline across longer delivery-delay segments, indicating an association between delivery performance and customer satisfaction.
<img width="1410" height="800" alt="Products   Reviews page" src="https://github.com/user-attachments/assets/b56dcf1e-b1c5-47e9-a916-5f3ccb9c49c5" />


---

## Key Insights

### 1. Repeat purchasing remains low

Olist had around **96K customers**, but only **3.12% made more than one purchase**. **97% of customers purchased only once**, while just **2.76% made two purchases**.

This highlights a clear retention challenge and suggests that understanding what drives customers to return should be a priority for further analysis.

### 2. Revenue is concentrated in a few states

**São Paulo generated R$5.2M in revenue**, compared with **R$1.8M from Rio de Janeiro**, the second-highest state.

The concentration of revenue across the leading states suggests that geographic performance is an important part of understanding the marketplace's overall revenue distribution.

### 3. Overall delivery performance hides state-level differences

The overall on-time delivery rate was **90.44%**, but performance varied considerably across states.

The lowest on-time delivery rates were **AL (75.54%), RR (78.26%), MA (79.25%), SE (81.14%), and CE (82.56%)**. Among the higher-volume states, **RJ had an 11.63% late-delivery rate compared with 4.36% in SP**.

This shows that the overall delivery rate does not fully capture the differences in performance across states.

### 4. Freight costs vary significantly across seller states

The overall average freight cost was **R$22.82**, while several seller states were substantially higher.

**RO had the highest average freight cost at R$50.91**, followed by **CE at R$47.91** and **PB at R$41.37**.

These differences warrant further analysis of shipping distance, seller location, and product characteristics to understand what is driving the higher costs.

### 5. Customer satisfaction varies across categories

The overall average review score was **4.1/5**, while **Services & Security averaged 2.5/5**, a **1.6-point difference** from the overall average.

Review scores also vary across states with different delivery experiences, indicating that customer satisfaction should be examined alongside product, seller, and fulfillment factors.

---

## Recommendations

### 1. Retention

With only **3.12% of customers making repeat purchases**, analyze repeat-purchase behavior by **product category, customer location, RFM segment, and first-order experience** to identify patterns among returning customers.

### 2. Geographic Revenue Concentration

With **São Paulo generating R$5.2M** compared with **R$1.8M from Rio de Janeiro**, analyze revenue by **state, customer count, order volume, and average order value** to understand what is driving the geographic concentration.

### 3. State Delivery Performance

Focus on states with lower on-time delivery rates, particularly **AL, RR, MA, SE, and CE**.

Compare **seller location, carrier performance, dispatch times, and delivery routes** with better-performing states to identify potential sources of delays.

### 4. Freight Cost

With RO's average freight cost at **R$50.91**, compared with the overall average of **R$22.82**, investigate **shipping distance, seller distribution, and product characteristics** in high-cost states.

### 5. Product & Customer Satisfaction

With **Services & Security averaging 2.5/5 compared with the overall 4.1/5**, investigate the category at the **seller and product level**.

Reviewing product ratings alongside seller performance, review sentiment, and delivery experience can help identify the factors contributing to lower customer satisfaction.

---

## What This Project Demonstrates

This project demonstrates how SQL and Power BI can be used to analyze an e-commerce marketplace across multiple business areas.

Starting with a low repeat-purchase rate, the analysis connects **customer behavior, RFM segmentation, revenue, delivery performance, freight costs, and customer satisfaction** to understand where the biggest differences appear.

**The dashboard moves from “What is happening?” to “Where are the gaps?” to “What should be investigated next?”**

---

## About
   Lesie Fernandes
🔗 [LinkedIn](#) | [Live Dashboard →](https://app.powerbi.com/view?r=eyJrIjoiNDc4OWFmYmQtNGFhMC00MWNmLThjYjktOWNiMzBjMzNkZDIzIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)
