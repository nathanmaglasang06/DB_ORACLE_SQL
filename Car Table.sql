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

DROP TABLE MAINTENANCE;
CREATE TABLE MAINTENANCE (
maintenance_id INT PRIMARY KEY,
type VARCHAR2(50),
description VARCHAR2(200),
cost INT,
maintenance_date DATE,
car_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id)
);


INSERT INTO CAR(car_id, model, make, year, daily_rate, fuel_type, is_available)
VALUES (1, '944 TURBO', 'PORSCHE', 1984, 200, 'PETROL', 'N');

INSERT INTO CAR(car_id, model, make, year, daily_rate, fuel_type, is_available)
VALUES (2, 'LC500', 'LEXUS', 2018, 600, 'PETROL', 'Y');

INSERT INTO CAR(car_id, model, make, year, daily_rate, fuel_type, is_available)
VALUES (3, 'EMIRA', 'LOTUS', 2023, 1000, 'PETROL', 'Y');

INSERT INTO CAR(car_id, model, make, year, daily_rate, fuel_type, is_available)
VALUES (4, 'YARIS', 'TOYOTA', 2015, 10, 'PETROL', 'Y');

INSERT INTO CAR(car_id, model, make, year, daily_rate, fuel_type, is_available)
VALUES (5, '918', 'PORSCHE', 2011, 3600, 'HYBRID', 'Y');

SELECT * FROM MAINTENANCE;

INSERT INTO MAINTENANCE(MAINTENANCE_ID, TYPE, DESCRIPTION, COST, MAINTENANCE_DATE, CAR_ID)
VALUES (1, 'PART SWAP', 'Clutch Replacement', 2500, TO_DATE('2026-01-12','YYYY-MM-DD'), 4);


SELECT table_name FROM USER_TABLES;
SELECT make, model, year FROM CAR;

SELECT * from CAR;

UPDATE CAR
SET DAILY_RATE=350
where CAR_ID=1;

UPDATE CAR
SET FUEL_TYPE= 'HYBRID', is_available= 'N'
where CAR_ID=3;

CREATE SEQUENCE maintenance_id_seq
START WITH 2
INCREMENT BY 1
NOCYCLE;

SELECT * FROM MAINTENANCE;

INSERT INTO MAINTENANCE(MAINTENANCE_ID, TYPE, DESCRIPTION, COST, MAINTENANCE_DATE, CAR_ID)
VALUES (1, 'PART SWAP', 'Clutch Replacement', 2500, TO_DATE('2026-01-12','YYYY-MM-DD'), 4);

INSERT INTO MAINTENANCE(MAINTENANCE_ID, TYPE, DESCRIPTION, COST, MAINTENANCE_DATE, CAR_ID)
VALUES (MAINTENANCE_ID_SEQ.nextval, 'PART SWAP', 'Clutch Replacement', 2500, TO_DATE('2026-01-12','YYYY-MM-DD'), 4);

commit;