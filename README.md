# Olist-Ecommerce-Analytics

# 🛒 Olist E-Commerce — Business Performance Analytics Dashboard

How can a marketplace generate R$ 13.59M in revenue from 96,000 customers 
and still have 97% of those customers never place a second order?

This dashboard was built to investigate that question. It connects revenue 
performance, customer retention, logistics reliability, and product quality 
— turning those findings into priorities for business and operations leadership.

---

## 🚩 Business Problem

Growth in orders does not mean customers are being served well.

Olist needed answers to three questions:

1. Where is customer retention failing?
2. Where is logistics creating risk at the state level — not just on average?
3. Which product categories are damaging the brand, and does late delivery explain it?

---

## 🗂️ Dataset

**Source:** [Brazilian E-Commerce Public Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
**Period:** 2016–2018 | **Orders:** ~100K |

Tables used: `olist_orders`, `olist_order_items`, `olist_customers`, 
`olist_products`, `olist_order_payments`, `olist_sellers`,`olist_product_category_info`.

---

## 🛠️ Tools

Power BI Desktop · MYSQL.Python

---

## 📊 Dashboard Pages

### Data Model<img width="1363" height="798" alt="Data Model" src="https://github.com/user-attachments/assets/76737914-6c40-4de5-814b-a89e65cd41a9" />



### Home
<img width="1397" height="786" alt="Home page" src="https://github.com/user-attachments/assets/086222d9-3360-4d90-87d7-c57892a3f0fa" />


### Overview
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

## 💡 Key Insights

- **Retention is the core problem** — 97% one-time buyers is not a 
  retention challenge; it means the platform has not yet built a loyal base
- **The average on-time rate overstates reliability** — five states 
  fall below 83%, with AL at 75.54%
- **Freight cost is geographically concentrated** — remote states pay 
  a premium that may suppress repeat demand in those markets
- **Late deliveries and low review scores move together** — consistent 
  enough across states to treat delivery improvement as a brand initiative

  ## ✅ Recommendations

| Priority | Action |
|---|---|
| Retention | Investigate whether low repeat rates tie to category, delivery experience, or city — before assuming a single cause |
| RJ Delivery | RJ's 11.63% late rate at high volume points to a carrier or routing issue — not a platform-wide problem |
| Freight Cost | RO, CE, and PB pay 2x the national average — assess whether seller distribution or pricing is the lever |
| Services & Security | A 2.5/5 score on a 5-point scale is too large a gap to ignore — needs a dedicated category review |
| Delivery → Satisfaction | Set logistics improvement goals alongside review score targets — the data supports treating them as the same initiative |

---

### Data Preparation & Loading

The Olist dataset contains 9 related CSV tables with a large volume of records and columns. During the initial attempt to load the complete dataset into MySQL, the loading process did not complete successfully due to the data volume.

To address this, I used Python for data profiling and preparation before loading the data into MySQL.

**Data preparation and modeling steps:**

* Performed data profiling in Python to understand the datasets, columns, data types, and overall structure.
* Removed unnecessary columns that were not required for the analysis to reduce the data volume.
* Loaded all **9 prepared tables into MySQL** using SQLAlchemy.
* Used `customer_unique_id` as the primary customer identifier for customer-level analysis rather than `customer_id`, allowing purchases associated with the same underlying customer to be analyzed together.
* Connected Power BI to MySQL and imported **8 of the 9 tables** into the Power BI model.
* Excluded the **geolocation table** from Power BI because it was not required for the final business analysis.
* In Power Query, merged the `order_reviews` data into the orders data to make review information available alongside order-level analysis.
* Disabled the standalone `order_reviews` table after the merge to avoid maintaining a duplicate table in the Power BI model.

This approach allowed the complete prepared dataset to be retained in MySQL while keeping the Power BI model focused on the tables and fields required for revenue, customer, delivery, product, and review analysis.



---

## 👤 About

Built by **Lesie Fernandes** as part of a data analytics portfolio.  
🔗 [LinkedIn](#) | [Portfolio](#) | [Shield Insurance Dashboard →](#)
