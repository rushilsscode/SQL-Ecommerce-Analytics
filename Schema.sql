Create database ecommerce_analytics;
USE ecommerce_analytics;

Create table customer(
	customer_id INT primary key,
	customer_name VARCHAR(100),
	email varchar(100),
    city VARCHAR(50),
	signup_date date
);

create Table products(
	product_id INT primary KEY,
	product_name VARCHAR(100),
	categeory VARCHAR(50),
    price DECIMAL(10,2)
);

Create table orders(
	order_id INT Primary key,
    customer_id INT,
    order_date date,
    status VARCHAR(20),
    foreign key (customer_id) references customer(customer_id)
);

Create Table order_items (
	order_items_id INT Primary Key,
    order_ID INT,
    product_ID INT,
    quantity INT,
    foreign key(order_id) references orders(order_id),
    foreign key(product_id) references products(product_id)
);
Create Table payments(
	payment_id INT primary key,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),
    Foreign key (order_id) references orders(order_id)
);
