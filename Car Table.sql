CREATE TABLE CUSTOMER (
customer_id INT PRIMARY KEY,
first_name VARCHAR2(100),
last_name VARCHAR2(100),
email VARCHAR2(150),
phone_number VARCHAR2(20),
street_address VARCHAR2(100),
suburb_address VARCHAR2(100),
state_address VARCHAR2(100), 
postcode_address VARCHAR2(100),
country_address VARCHAR2(100)
);


CREATE TABLE RENTAL (
rental_id INT PRIMARY KEY,
start_date DATE,
end_date DATE,
rental_rate INT,
insurance_charge INT,
fuel_charge DECIMAL(10,2),
car_id INT, 
customer_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id),
FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)
);


CREATE TABLE CAR (
car_id INT PRIMARY KEY, 
model VARCHAR2(255),
make VARCHAR2(255),
year INT,
daily_rate INT,
fuel_type VARCHAR2(255),
is_available VARCHAR2(1)
);


CREATE TABLE MAINTENANCE (
maintenance_id INT PRIMARY KEY,
type INT,
description VARCHAR2(200),
cost INT,
maintenance_date DATE,
car_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id)
);

SELECT table_name FROM USER_TABLES;