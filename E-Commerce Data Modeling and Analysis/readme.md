# E-Commerce Data Modeling and Analysis

This project focuses on designing a robust database schema and analyzing e-commerce data to uncover customer purchasing patterns, product popularity, and sales performance trends. The analysis is performed using PostgreSQL and Python on the [Instacart Market Basket Analysis dataset](https://www.kaggle.com/c/instacart-market-basket-analysis/data).

## Project Overview

The purpose of this project is to:
- **Design a Structured Database Schema**: Create a structured and efficient database model for e-commerce operations.
- **Analyze E-Commerce Data**: Gain insights into customer behaviour, product performance, and shopping trends using SQL and Python.
- **Provide Actionable Insights**: Support decision-making for inventory management, marketing, and customer engagement.

## Dataset Details

This project uses the **Instacart Market Basket Analysis dataset** from Kaggle. It contains transactional data, including orders, products, and their respective categories (aisles and departments). The dataset provides detailed information about:
- Customer order histories.
- Products purchased and their attributes.
- Relationships between orders and products.

You can find the dataset [here](https://www.kaggle.com/c/instacart-market-basket-analysis/data).

## Database Overview

### Tables Used
1. **Orders**: Captures details about customer orders, including order time, day, and user ID.
2. **Order_Products**: Logs the products associated with each order, including cart position and reorder status.
3. **Products**: Contains product details such as product name, department, and aisle associations.
4. **Aisles**: Represents the categorization of products by aisle.
5. **Departments**: Represents broader product categories grouped by department.

### Data Model
The database follows a structured schema that adheres to normalization principles to ensure:
- Efficient data organization.
- Elimination of redundancy.
- Consistency across entities using primary and foreign key relationships.

The schema captures many-to-many relationships between orders and products using the `order_products` table, with products linked to aisles and departments.

## Analysis Summary

### Data Analysis
- **Product Analysis**:
  - Identified the most and least popular products based on order frequency.
  - Calculated the average cart position for products, highlighting their prominence in customer orders.
- **Department and Aisle Trends**:
  - Aggregated metrics to reveal the most and least popular departments and aisles.
  - Analyzed trends in customer preferences based on department and aisle categories.
- **Order Insights**:
  - Examined reorder patterns and identified customer purchasing behaviours.
  - Highlighted shopping patterns, including weekday vs. weekend purchases and average order times.

## How to Use

1. Clone this repository to your local environment.
2. Download the dataset from [Kaggle](https://www.kaggle.com/c/instacart-market-basket-analysis/data) and place the CSV files in the project directory.
3. Load the SQL scripts provided into a PostgreSQL database.
4. Execute the scripts sequentially to set up the database and generate insights.
5. Use Python scripts to visualize trends and perform additional analysis in the project.

## Conclusion

This project demonstrates the integration of data modelling and analysis to uncover valuable e-commerce insights. Designing a structured database schema and leveraging SQL and Python for analysis provides actionable insights to optimize inventory management, marketing strategies, and customer engagement.

