# 📊 Sakila SQL EDA Project (MySQL | SQL | Data Analysis)

## 🧭 Project Overview
This project presents an **end-to-end Exploratory Data Analysis (EDA)** on the **Sakila Movie Rental Database** using **SQL (MySQL)**.  
The analysis includes **data cleaning, preprocessing, SQL-based exploration, and actionable business insights** for **store performance, revenue trends, customer behavior, and inventory management**.

---

## 🎯 Project Objectives
- Analyze **store revenue trends** over time  
- Identify **top customers and profitable movie categories**  
- Evaluate **staff performance and late rental patterns**  
- Monitor **inventory availability** per store  

---

## 👥 Stakeholders & Key Questions

### **Stakeholders**
- **Business Manager / CEO** – Store revenue and top customers  
- **Sales & Marketing Team** – Profitable movie categories, high-value customers  
- **Inventory / Operations Team** – Late returns and stock availability  
- **Data Analyst / BI Team** – Data quality and actionable insights  

### **Key Questions**
| Stakeholder | Key Questions |
|------------|---------------|
| **Business Manager / CEO** | Which stores generate the highest revenue? How do revenues vary over time? |
| **Sales & Marketing Team** | Which movie categories and ratings generate the most revenue? Who are the top customers? |
| **Inventory / Operations Team** | How many rentals are late? Which films are in/out of stock per store? |
| **Data Analyst / BI Team** | How clean and reliable is the data? What insights can SQL EDA provide? |

---

## 🧮 Dataset Information
| Table | Description |
|-------|-------------|
| **payment** | Payment transactions with amount and date |
| **rental** | Rental transactions with rental start/end dates |
| **customer** | Customer information |
| **staff** | Staff handling payments and rentals |
| **store** | Store information |
| **inventory** | Stock and film information |
| **film & category** | Film details and categories |

📁 **Rows/Columns:** Varies per table  
📚 **Source:** MySQL Sakila Sample Database  

---

## ⚙️ Tools & Technologies Used
- **MySQL / MySQL Workbench** – Database and SQL queries  
- **SQL** – Joins, aggregations, date functions, subqueries  
- **CSV / Excel** – Optional export of query results for reporting  

---

## 🧩 SQL EDA Steps & Queries
| Step | Query File | Purpose |
|------|------------|---------|
| **1** | `01_store_revenue.sql` | Store revenue analysis and seasonal trends |
| **2** | `02_movie_category_rating.sql` | Revenue by movie category and rating |
| **3** | `03_top_customers.sql` | Top 10 customers by total payments |
| **4** | `04_rental_analysis.sql` | Average rental duration and late returns |
| **5** | `05_staff_performance.sql` | Staff performance and payments processed |
| **6** | `06_geographic_revenue.sql` | Revenue by city and country |
| **7** | `07_inventory_status.sql` | Inventory in-stock vs out-of-stock per store |

---

## 📈 Key Insights & Findings
- 💰 **Revenue Analysis:** Top-performing stores identified with seasonal revenue patterns  
- 🎬 **Movie Categories:** Certain categories and ratings generate most revenue  
- 👥 **Customer Behavior:** Top 10 customers contribute most revenue  
- 🕒 **Rental Analysis:** Average rental duration and late returns monitored  
- 🏢 **Staff & Inventory:** Staff efficiency and stock availability per store analyzed  
- 🌍 **Geographic Trends:** City and country revenue contribution measured  

---
## 📊 Key Insights

- **Store Revenue:** Store 1 consistently generates higher revenue; peak months are July–August 2005.  
- **Movie Categories & Ratings:** Top revenue categories are Sports, Sci-Fi, Animation, Drama; PG-13 and NC-17 films lead in revenue.  
- **Top Customers:** Top 10 customers contribute a significant portion of revenue, indicating loyal, high-value users.  
- **Rental Duration & Late Returns:** Average rental duration ~5 days; 8,121 rentals returned late.  
- **Staff Performance:** Staff Mike and Jon processed the most payments and revenue.  
- **Geographic Revenue:** Highest revenue comes from US cities; other key markets exist across Europe, Asia, and South America.  
- **Inventory Availability:** Most films in stock (2,178), small portion out-of-stock (92).

## 💡 Recommendations

- Focus promotions on high-revenue stores and peak months.  
- Promote top-performing categories and popular movie ratings.  
- Launch loyalty programs for top customers.  
- Reduce late returns via reminders or incentives.  
- Ensure popular films remain in stock; adjust inventory seasonally.  
- Optimize staff workflow based on performance metrics.  

## 🏁 Conclusion

SQL-based EDA reveals **store performance, customer behavior, movie popularity, and inventory trends**. Insights help drive **revenue growth, operational efficiency, and customer satisfaction**.
---

## 🛠️ How to Run the Project
1. Clone the repository.  
2. Load the **Sakila database** into MySQL.  
3. Run SQL scripts from `sql_queries/` in order.  
4. Export results (optional) to `results/` folder for reporting.  

---
## 📝 NOTE
- All analysis is performed **entirely using SQL**. No external data processing tools were used.  
- Ensure the **Sakila database** is fully loaded with all tables and constraints before running queries.  
- Some queries (like inventory in/out stock) assume **custom SQL functions** such as `inventory_in_stock()` exist; adjust based on your environment.  
- CSV exports in `results/` are optional and for demonstration purposes; query outputs can be viewed directly in MySQL Workbench.  
- Dates are formatted using `DATE_FORMAT` for readability; adjust according to your MySQL version.

--- 
## 👨‍💻 Author
**Bandi Purna Shekhar**  
SQL Analyst | Data Analyst | Business Intelligence  
📧 purnashekhar2352@gmail.com
🔗 www.linkedin.com/in/bandi-purnashekhar 
🔗 [GitHub](https://github.com/purnashekhar)  

---

⭐ **If you find this project useful, don’t forget to give it a star!** ⭐
