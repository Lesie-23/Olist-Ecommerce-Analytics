# Olist-Ecommerce-Analytics

How can a marketplace generate R$13.59M in revenue from 96K customers when nearly 97% of customers made only one purchase?

This project investigates that question by connecting revenue performance, customer retention, logistics reliability, and product satisfaction to identify key business patterns and areas for further investigation.

##  Business Problem

Olist generates significant revenue and order volume, but nearly 97% of customers made only one purchase. This raises questions about customer retention and whether operational and product experiences may be contributing to the limited repeat purchasing.

The analysis focuses on three areas:

- **Customer retention:** How strong is repeat purchasing, which customer segments are most valuable, and where are the biggest retention gaps?
- **Delivery performance:** Which customer states experience higher delivery delays compared with the overall performance?
- **Customer satisfaction:** Which product categories receive lower review scores, and is there an association between delivery delays and customer satisfaction?

---

###  Dataset

Source: Brazilian E-Commerce Public Dataset — Olist
Period: 2016–2018
Orders: ~100K
Source Tables: 9 CSV tables

Tables
olist_orders
olist_order_items
olist_customers
olist_products
olist_order_payments
olist_order_reviews
olist_sellers
olist_product_category_info
geolocation

Loaded into MySQL: 9 tables
Loaded into Power BI: 8 tables

The geolocation table was excluded from the Power BI model because it was not required for the final business analysis.

--- 

##  Tools

**Python · SQL · MySQL · Power BI Desktop · Power Query · DAX**

---
###  Data Preparation & Loading

The Olist dataset contains 9 related CSV tables with a large volume of records and columns. During the initial attempt to load the complete dataset into MySQL, the loading process did not complete successfully due to the data volume.

To address this, Python was used for data profiling and preparation before loading the data into MySQL.

Data preparation and modeling steps:

-Performed data profiling in Python to understand the datasets, columns, data types, and overall structure.

-Removed unnecessary columns that were not required for the analysis to reduce the data volume.

-Loaded all 9 prepared tables into MySQL using SQLAlchemy.

-Used customer_unique_id as the customer-level identifier for customer analysis rather than customer_id, allowing purchases associated with the same underlying customer to be analyzed together.

-Connected Power BI to MySQL and imported 8 of the 9 tables into the Power BI model.

-Excluded the geolocation table from Power BI because it was not required for the final business analysis.

-In Power Query, merged the order_reviews data into the orders data to make review information available alongside order-level analysis.

-Disabled the standalone order_reviews table after the merge to avoid maintaining a duplicate table in the Power BI model.


This approach allowed the complete prepared dataset to be retained in MySQL while keeping the Power BI model focused on the data required for revenue, customer, delivery, product, and review analysis.

---

##  SQL Analysis

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
<img width="1413" height="792" alt="Home page" src="https://github.com/user-attachments/assets/8202e5d3-796d-4500-a87d-1ce19a12d2ec" />



### Overview
Provides an executive-level view of revenue, orders, customer retention, average order value, and delivery performance.
 <img width="1424" height="799" alt="overview page" src="https://github.com/user-attachments/assets/cee5cd99-2794-4b85-9033-7c2775a7527e" />


### Customer Insights
Nearly 97% of 96K customers made only one purchase. This page investigates the retention gap through RFM segmentation, purchase frequency, and city-level revenue concentration.
<img width="1408" height="789" alt="Customer Insights" src="https://github.com/user-attachments/assets/95932366-0317-45c3-8d8f-7b0aef77f8ca" />


### Logistics & Operations
An overall on-time delivery rate of 90.44% hides significant state-level variation. RJ's late rate is 11.63% compared with 4.36% in SP at comparable order volumes. Freight costs also vary substantially across states, with RO and CE averaging more than twice the R$22.82 overall average.
<img width="1420" height="789" alt="Logistics   Operations page" src="https://github.com/user-attachments/assets/23937ab7-a751-4011-b1a5-e548505b3fe5" />


### Products & Reviews
Services & Security scores 2.5/5 — 1.6 points below the 4.1 overall average. Review scores also tend to decline across longer delivery-delay segments, indicating an association between delivery performance and customer satisfaction.
<img width="1402" height="786" alt="Products   Reviews page" src="https://github.com/user-attachments/assets/d55183c5-7f7d-4bac-b273-3514162e87c5" />

---

####  Key Insights

- **Customer retention is a major opportunity:** Nearly 97% of customers made only one purchase, indicating a very low repeat-purchase rate and a significant gap between customer acquisition and repeat purchasing.

- **Overall delivery performance hides state-level variation:** The overall on-time delivery rate is 90.44%, but delivery performance varies considerably across customer states. RJ, for example, has an 11.63% late-delivery rate compared with 4.36% in SP at comparable order volumes.

- **Freight costs vary substantially by geography:** Average freight costs differ considerably across states. RO and CE have average freight costs more than twice the R$22.82 overall average, highlighting areas for further investigation.

- **Longer delivery delays are associated with lower customer satisfaction:** Average review scores decline across longer delivery-delay segments, indicating a relationship between delivery performance and customer satisfaction.

- **Customer satisfaction varies across product categories:** Certain product categories have materially lower average review scores than the overall average, highlighting categories that warrant deeper investigation into product, seller, or service-related issues.

  #### Recommendations

- **Retention:** Investigate whether low repeat-purchase rates are associated with specific product categories, delivery experiences, or customer locations to identify potential retention drivers.

- **State Delivery Performance:** Investigate carrier, seller-dispatch, and routing factors in states with higher late-delivery rates to identify operational improvement opportunities.

- **Freight Cost:** Examine whether seller distribution, shipping distance, or pricing structure contributes to higher freight costs in states with above-average shipping expenses.

- **Product Satisfaction:** Review lower-rated product categories and examine recurring review themes, seller performance, and product-related issues.

- **Delivery & Satisfaction:** Monitor delivery performance alongside customer reviews, particularly for longer-delay segments, to determine whether improving delivery reliability could support better customer experiences.

---

##  About

🔗 [LinkedIn](#) | [Live Dashboard →](https://app.powerbi.com/view?r=eyJrIjoiNDc4OWFmYmQtNGFhMC00MWNmLThjYjktOWNiMzBjMzNkZDIzIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)
