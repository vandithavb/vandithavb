-- Create a temporary table that joins the orders, order_products, and products tables to get information about each order, including the products that were purchased and their department and aisle information.

CREATE TEMPORARY TABLE order_details AS
    SELECT o.order_id, o.order_number, o.order_dow, o.order_hour_of_day, o.days_since_prior_order,
           op.product_id, op.add_to_cart_order, op.reordered,
           p.product_name, p.aisle_id, p.department_id
    FROM orders AS o
    JOIN order_products AS op ON o.order_id = op.order_id
    JOIN products AS p ON op.product_id = p.product_id;

SELECT * FROM order_details;

-- Create a temporary table that groups the orders by product and finds the total number of times each product was purchased, the total number of times each product was reordered, and the average number of times each product was added to a cart.

CREATE TEMPORARY TABLE product_order_summary AS
    SELECT product_id, product_name, COUNT(*) AS total_orders,
           COUNT(reordered) AS total_reorders,
           AVG(add_to_cart_order) AS avg_add_to_cart
    FROM order_details
    GROUP BY product_id, product_name;

SELECT * FROM product_order_summary;

-- Create a temporary table that groups the orders by department and finds the total number of products purchased, the total number of unique products purchased, the total number of products purchased on weekdays vs weekends, and the average time of day that products in each department are ordered.

CREATE TEMPORARY TABLE department_order_summary AS
	SELECT department_id, COUNT(product_id) as total_products_purchased,
		COUNT(DISTINCT product_id) as total_unique_products_purchased,
		COUNT(CASE WHEN order_dow < 6 THEN 1 ELSE NULL END) AS total_weekday_purchases,
		COUNT(CASE WHEN order_dow>=6 THEN 1 ELSE NULL END) AS total_weekend_purchases,
		AVG(order_hour_of_day) as avg_order_time
	FROM order_details
	GROUP BY department_id;

SELECT * FROM department_order_summary;

-- Create a temporary table that groups the orders by aisle and finds the top 10 most popular aisles, including the total number of products purchased and the total number of unique products purchased from each aisle.

CREATE TEMPORARY TABLE aisle_order_summary AS
	SELECT aisle_id, COUNT(*) as total_number_of_products,
		COUNT(DISTINCT product_id) as total_unique_products
		FROM order_details
	GROUP BY aisle_id 
	ORDER BY total_number_of_products DESC
	LIMIT 10;

SELECT * FROM aisle_order_summary;

-- Combine the information from the previous temporary tables into a final table that shows the product ID, product name, department ID, department name, aisle ID, aisle name, total number of times purchased, total number of times reordered, average number of times added to cart, total number of products purchased, total number of unique products purchased, total number of products purchased on weekdays, total number of products purchased on weekends, and average time of day products are ordered in each department.
SELECT pi.product_id, pi.product_name, pi.department_id, d.department, pi.aisle_id, a.aisle,
	   pos.total_orders, pos.total_reorders, pos.avg_add_to_cart,
	   dos.total_products_purchased, dos.total_unique_products_purchased,
	   dos.total_weekday_purchases, dos.total_weekend_purchases, dos.avg_order_time
FROM product_order_summary AS pos
JOIN products AS pi ON pos.product_id = pi.product_id
JOIN departments AS d ON pi.department_id = d.department_id
JOIN aisles AS a ON pi.aisle_id = a.aisle_id
JOIN department_order_summary AS dos ON pi.department_id = dos.department_id;

