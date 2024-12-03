

# E-Commerce Data Modeling and Analysis

This project demonstrates the design of a relational database schema and the analysis of e-commerce transactional data using **PostgreSQL** and **Python**. Data from the [Instacart Market Basket Analysis dataset](https://www.kaggle.com/c/instacart-market-basket-analysis/data) is loaded into the database and analyzed to uncover trends in customer purchasing behaviour, product performance, and sales patterns.

---

## Project Overview

The purpose of this project is to:
- **Design a Relational Database Schema**: Create a normalized schema to structure and store e-commerce data with relational constraints for efficient querying and integrity.
- **Perform Data Integration**: Load raw data from Kaggle CSV files into PostgreSQL tables using Python workflows.
- **Analyze Data Using SQL**: Leverage SQL queries to extract key metrics, trends, and insights directly from the relational database.
- **Generate Actionable Insights**: Support decision-making for inventory management, marketing, and customer engagement based on data analysis.

![Data Model](https://github.com/vandithavb/vandithavb/blob/main/E-Commerce%20Data%20Modeling%20and%20Analysis/data%20model.png)

---

## Dataset Details

This project uses the **Instacart Market Basket Analysis dataset** from Kaggle, which includes:
- **Orders**: Details about customer orders, including the order day and time.
- **Order_Products**: Information on products within each order, including reorders and cart positions.
- **Products**: Attributes of individual products, such as names and categories.
- **Aisles** and **Departments**: Hierarchical categories for organizing products.

You can access the dataset [here](https://www.kaggle.com/c/instacart-market-basket-analysis/data).

---

## Database Overview

### Tables Used
1. **Orders**: Captures customer order details (order ID, day, time).
2. **Order_Products**: Log details of products in each order, including cart order and reorders.
3. **Products**: Contains product-specific attributes like name, aisle, and department.
4. **Aisles**: Groups products into smaller categories.
5. **Departments**: Represents broader product categories.

### Data Model
The database follows a structured schema designed to:
- Organize data efficiently for analysis.
- Maintain data integrity with primary and foreign key constraints.
- Eliminate redundancy through normalization.

The schema includes many-to-many relationships between orders and products, with products linked to aisles and departments.

---

## Analysis Summary

### Key Insights
- **Product Trends**:
  - Identified the most and least popular products based on order frequency.
  - Analyzed product reordering patterns and average cart positions.
- **Category Performance**:
  - Determined the most popular departments and aisles.
  - Aggregated data to identify category-level purchasing patterns.
- **Customer Behavior**:
  - Examined weekday vs. weekend shopping trends.
  - Highlighted purchasing times and reordered behaviours.

SQL was used extensively for data aggregation, filtering, and generating actionable insights.

---

## How to Use

1. Clone this repository to your local environment.
2. Download the dataset from [Kaggle](https://www.kaggle.com/c/instacart-market-basket-analysis/data) and place the CSV files in the project directory.
3. Set up a PostgreSQL database.
4. Use the provided Python scripts to load the data into PostgreSQL tables.
5. Run the SQL scripts to perform analysis and generate insights.

---

## Conclusion

This project demonstrates the integration of data engineering and analysis to derive insights from e-commerce transactional data. By designing a relational database schema, loading structured data, and leveraging SQL for in-depth analysis, it supports data-driven strategies for optimizing business operations and enhancing customer experience.
