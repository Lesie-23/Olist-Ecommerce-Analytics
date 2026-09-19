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

## 📊 Dashboard Pages

### Data Model<img width="1363" height="798" alt="Data Model" src="https://github.com/user-attachments/assets/76737914-6c40-4de5-814b-a89e65cd41a9" />



### Home
The Home page provides navigation across the main sections of the dashboard.
<img width="1413" height="792" alt="Home page" src="https://github.com/user-attachments/assets/8202e5d3-796d-4500-a87d-1ce19a12d2ec" />



### Overview
The Overview page provides an executive view of revenue, customer retention, order performance, and delivery performance.
 <img width="1424" height="799" alt="overview page" src="https://github.com/user-attachments/assets/cee5cd99-2794-4b85-9033-7c2775a7527e" />


### Customer Insights
Nearly 97% of the 96K customers made only one purchase. This page investigates the retention gap through purchase behavior, RFM segmentation, and revenue concentration.

RFM analysis was used to segment customers based on:

- **Recency** – how recently the customer purchased
- **Frequency** – how often the customer purchased
- **Monetary** – how much the customer spent

The analysis helps identify differences in customer value and purchasing behavior.
<img width="1408" height="789" alt="Customer Insights" src="https://github.com/user-attachments/assets/95932366-0317-45c3-8d8f-7b0aef77f8ca" />


### Logistics & Operations
The overall on-time delivery rate is 90.44%, but state-level performance varies considerably. RJ has an 11.63% late-delivery rate compared with 4.36% in SP at comparable order volumes, while freight costs also vary substantially across states.
<img width="1420" height="789" alt="Logistics   Operations page" src="https://github.com/user-attachments/assets/23937ab7-a751-4011-b1a5-e548505b3fe5" />


### Products & Reviews
Customer satisfaction varies across product categories, with Services & Security averaging 2.5/5 compared with the overall 4.1/5 average. Review scores also tend to decline across longer delivery-delay segments, indicating an association between delivery performance and customer satisfaction.
<img width="1402" height="786" alt="Products   Reviews page" src="https://github.com/user-attachments/assets/d55183c5-7f7d-4bac-b273-3514162e87c5" />

---

## Key Insights

### 1. Repeat purchasing is very low

Nearly **97% of customers made only one purchase**, while only a small percentage returned for additional purchases.

This creates a significant retention gap and raises questions about what happens after the customer's first purchase.

### 2. Overall delivery performance hides state-level differences

The overall on-time delivery rate is **90.44%**, but state-level performance varies considerably.

RJ has an **11.63% late-delivery rate**, compared with **4.36% in SP** at comparable order volumes.

### 3. Freight costs vary by geography

Average freight costs differ substantially across states.

RO and CE have average freight costs more than twice the overall average of **R$22.82**, making them areas worth investigating further.

### 4. Longer delivery delays are associated with lower review scores

Average review scores tend to decline as delivery delays increase.

This does not prove that delays cause lower satisfaction, but the relationship is strong enough to justify further investigation.

### 5. Customer satisfaction varies across product categories

Some categories perform considerably below the overall review-score average.

These categories could be investigated further by looking at seller performance, product issues, and fulfillment experience.

---

## Recommendations

### Retention

Investigate repeat-purchase behavior by product category, customer location, RFM segment, and delivery experience to identify potential retention drivers.

### State Delivery Performance

For states with higher late-delivery rates, investigate carrier performance, seller location, dispatch times, and routing factors to understand where delays are occurring.

### Freight Cost

Analyze shipping distance, seller distribution, and product characteristics to understand why some states have significantly higher freight costs.

### Product Satisfaction

Investigate lower-rated categories at the seller and product level to separate product-related issues from seller or fulfillment issues.

### Delivery & Satisfaction

Track delivery performance alongside review scores to investigate whether improvements in delivery reliability are associated with better customer satisfaction.

---

## What This Project Demonstrates

This project demonstrates how SQL and Power BI can be used to analyze an e-commerce marketplace across multiple business areas.

Starting with a low repeat-purchase rate, the analysis connects **customer behavior, RFM segmentation, revenue, delivery performance, freight costs, and customer satisfaction** to understand where the biggest differences appear.

**The dashboard moves from “What is happening?” to “Where are the gaps?” to “What should be investigated next?”**

---

## About
   Lesie Fernandes
🔗 [LinkedIn](#) | [Live Dashboard →](https://app.powerbi.com/view?r=eyJrIjoiNDc4OWFmYmQtNGFhMC00MWNmLThjYjktOWNiMzBjMzNkZDIzIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)
