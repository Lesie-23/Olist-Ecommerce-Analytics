# Olist-Ecommerce-Analytics

How can a marketplace generate R$13.59M in revenue from 96K customers when nearly 97% of customers made only one purchase?

This project investigates that question by connecting revenue performance, customer retention, logistics reliability, and product satisfaction to identify key business patterns and areas for further investigation.

🚩 Business Problem

Growth in orders does not necessarily mean customers are being served effectively.

Olist needed answers to three key questions:

Where is customer retention underperforming?
Where is logistics creating risk at the state level — not just on average?
Which product categories have lower customer satisfaction, and is delivery performance associated with lower review scores?
🗂️ Dataset

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

### 🛠️ Tools

##### Python ·  MySQL · Power BI Desktop 

---
### 🔧 Data Preparation & Loading

The Olist dataset contains 9 related CSV tables with a large volume of records and columns. During the initial attempt to load the complete dataset into MySQL, the loading process did not complete successfully due to the data volume.

To address this, Python was used for data profiling and preparation before loading the data into MySQL.

Data preparation and modeling steps
Performed data profiling in Python to understand the datasets, columns, data types, and overall structure.
Removed unnecessary columns that were not required for the analysis to reduce the data volume.
Loaded all 9 prepared tables into MySQL using SQLAlchemy.
Used customer_unique_id as the customer-level identifier for customer analysis rather than customer_id, allowing purchases associated with the same underlying customer to be analyzed together.
Connected Power BI to MySQL and imported 8 of the 9 tables into the Power BI model.
Excluded the geolocation table from Power BI because it was not required for the final business analysis.
In Power Query, merged the order_reviews data into the orders data to make review information available alongside order-level analysis.
Disabled the standalone order_reviews table after the merge to avoid maintaining a duplicate table in the Power BI model.

This approach allowed the complete prepared dataset to be retained in MySQL while keeping the Power BI model focused on the data required for revenue, customer, delivery, product, and review analysis.

--- 

## 📊 Dashboard Pages

### Data Model<img width="1363" height="798" alt="Data Model" src="https://github.com/user-attachments/assets/76737914-6c40-4de5-814b-a89e65cd41a9" />



### Home
<img width="1397" height="786" alt="Home page" src="https://github.com/user-attachments/assets/086222d9-3360-4d90-87d7-c57892a3f0fa" />


### Overview
Provides an executive-level view of revenue, orders, customer retention, average order value, and delivery performance.
 <img width="1424" height="799" alt="overview page" src="https://github.com/user-attachments/assets/cee5cd99-2794-4b85-9033-7c2775a7527e" />


### Customer Insights
97% of 96K customers made only one purchase. This page investigates 
the retention gap through RFM segmentation, purchase frequency, and 
city-level revenue concentration.
<img width="1408" height="789" alt="Customer Insights" src="https://github.com/user-attachments/assets/95932366-0317-45c3-8d8f-7b0aef77f8ca" />


### Logistics & Operations
On-time delivery rate of 90.44% hides significant state-level variation. 
RJ's late rate is 11.63% against SP's 4.36% at comparable volume. 
Freight costs in RO and CE are more than double the R$ 22.82 national average.
<img width="1420" height="789" alt="Logistics   Operations page" src="https://github.com/user-attachments/assets/23937ab7-a751-4011-b1a5-e548505b3fe5" />


### Products & Reviews
Services & Security scores 2.5/5 — 1.6 points below the 4.1 overall average. 
States with longer late delivery days consistently show lower review scores, 
making logistics a satisfaction lever, not just an operations metric.
<img width="1402" height="786" alt="Products   Reviews page" src="https://github.com/user-attachments/assets/d55183c5-7f7d-4bac-b273-3514162e87c5" />

---

## Key Insights
- Retention is a major opportunity — nearly 97% of customers made only one purchase, indicating a very low repeat-purchase rate.
- Average delivery performance hides state-level variation — some states perform substantially below the overall on-time delivery rate.
- Freight costs are geographically concentrated — some states have substantially higher average freight costs than the national average.
- Late deliveries are associated with lower review scores — longer delivery delays tend to correspond with weaker customer satisfaction.
- Customer satisfaction varies by product category — certain categories show materially lower review scores than the overall average.

  ## Recommendations

- Retention -	Investigate whether low repeat rates are associated with product category, delivery experience, or customer location before assuming a single cause.
- State Delivery Performance- 	Investigate carrier, seller-dispatch, and routing factors contributing to states with higher late-delivery rates.
- Freight Cost - 	Investigate whether seller distribution, shipping distance, or pricing structure contributes to higher freight costs in affected states.
- Product Satisfaction- 	Review lower-rated product categories to identify recurring customer complaints and potential product or seller-level issues.
- Delivery → Satisfaction- 	Monitor delivery performance alongside review scores because lower review scores are observed in longer-delay segments.

---

### Data Preparation & Loading

The Olist dataset contains 9 related CSV tables with a large volume of records and columns. During the initial attempt to load the complete dataset into MySQL, the loading process did not complete successfully due to the data volume.

To address this, I used Python for data profiling and preparation before loading the data into MySQL.

**Data preparation and modeling steps:**

* Performed data profiling in Python to understand the datasets, columns, data types, and overall structure.
* Removed unnecessary columns that were not required for the analysis to reduce the data volume.
* Loaded all **9 prepared tables into MySQL** using SQLAlchemy.
* Used `customer_unique_id` as the customer-level identifier for customer analysis rather than `customer_id`, allowing purchases associated with the same underlying customer to be analyzed together.
* Connected Power BI to MySQL and imported **8 of the 9 tables** into the Power BI model.
* Excluded the **geolocation table** from Power BI because it was not required for the final business analysis.
* In Power Query, merged the `order_reviews` data into the orders data to make review information available alongside order-level analysis.
* Disabled the standalone `order_reviews` table after the merge to avoid maintaining a duplicate table in the Power BI model.

This approach allowed the complete prepared dataset to be retained in MySQL while keeping the Power BI model focused on the tables and fields required for revenue, customer, delivery, product, and review analysis.



---

## 👤 About

Built by **Lesie Fernandes** as part of a data analytics portfolio.  
🔗 [LinkedIn](#) | [Live Dashboard →](https://app.powerbi.com/view?r=eyJrIjoiNDc4OWFmYmQtNGFhMC00MWNmLThjYjktOWNiMzBjMzNkZDIzIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9))
