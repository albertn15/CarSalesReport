CREATE TABLE car_data (
	car_id VARCHAR(50),
	tanggal date ,
	customer_name VARCHAR(50),
	gender VARCHAR(50),
	annual_income INTEGER,
	dealer_name VARCHAR(50),
	company VARCHAR(50),
	model VARCHAR(50),
	engine VARCHAR(50),
	transmission VARCHAR(50),
	color VARCHAR(50),
	price INTEGER,
	dealer_no VARCHAR(50),
	body_style VARCHAR(50),
	phone INTEGER,
	dealer_region VARCHAR(50)
);

SET datestyle = 'MDY';

COPY car_data (car_id,tanggal,customer_name,gender,annual_income,dealer_name,company,model,engine,transmission,color,price,dealer_no,body_style,phone,dealer_region) 
FROM '/tmp/car_data.csv' 
DELIMITER ',' 
CSV HEADER;

SELECT *
FROM car_data