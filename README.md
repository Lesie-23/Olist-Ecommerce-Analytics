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

## 📊 Dashboard Pages

### Overview
Revenue, order volume, and geographic performance — with delivery 
reliability flagged where it matters most.

### Customer Insights
97% of 96K customers made only one purchase. This page investigates 
the retention gap through RFM segmentation, purchase frequency, and 
city-level revenue concentration.

### Logistics & Operations
On-time delivery rate of 90.44% hides significant state-level variation. 
RJ's late rate is 11.63% against SP's 4.36% at comparable volume. 
Freight costs in RO and CE are more than double the R$ 22.82 national average.

### Products & Reviews
Services & Security scores 2.5/5 — 1.6 points below the 4.1 overall average. 
States with longer late delivery days consistently show lower review scores, 
making logistics a satisfaction lever, not just an operations metric.

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

---

## 🗂️ Dataset

**Source:** [Brazilian E-Commerce Public Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
**Period:** 2016–2018 | **Orders:** ~100K | **Type:** Real data, anonymised

Tables used: `olist_orders`, `olist_order_items`, `olist_customers`, 
`olist_products`, `olist_order_reviews`, `olist_sellers`.

---

## 🛠️ Tools

Power BI Desktop · MYSQL.Python

---

## 📸 Dashboard Preview

| Page | Preview |
|---|---|
| Home | ![Home](screenshots/01_home.png) |
| Overview | ![Overview](screenshots/02_overview.png) |
| Customer Insights | ![Customer Insights](screenshots/03_customer_insights.png) |
| Logistics & Operations | ![Logistics](screenshots/04_logistics_operations.png) |
| Products & Reviews | ![Products](screenshots/05_products_reviews.png) |

---

## 👤 About

Built by **Lesie Fernandes** as part of a data analytics portfolio.  
🔗 [LinkedIn](#) | [Portfolio](#) | [Shield Insurance Dashboard →](#)
