Use ecommerce_sales;
drop table ecommerce_sales_data;

CREATE TABLE ecommerce_sales_staging 
LIKE ecommerce_sales;

drop table ecommerce_sales_staging;

select * from ecommerce_sales_staging;

alter table ecommerce_sales_staging
rename column `age group` to Age_group,
rename column `purchase date` to Purchase_date,
rename column `product category` to Product_category,
rename column `discount availed` to Discount_availed,
rename column `Discount name` to Discount_name,
rename column `Discount amount (INR)` to Discount_amount_INR,
rename column `Gross amount` to Gross_amount,
rename column `Net amount` to Net_amount,
rename column `purchase Method` to Purchase_method;

#columns renamed

UPDATE ecommerce_sales_staging
SET 
customer_id = NULLIF(TRIM(customer_id), ''),
Transaction_id = NULLIF(TRIM(Transaction_id), ''),
Gender = NULLIF(TRIM(Gender), ''),
Age_Group = NULLIF(TRIM(Age_Group), ''),
Purchase_Date = NULLIF(TRIM(Purchase_Date), ''),
product_category = NULLIF(TRIM(product_category), ''),
discount_availed = NULLIF(TRIM(discount_availed), ''),
Discount_name = NULLIF(TRIM(Discount_name), ''),
Discount_amount_INR = NULLIF(TRIM(Discount_amount_INR), ''),
Gross_amount = NULLIF(TRIM(Gross_amount), ''),
Net_amount = NULLIF(TRIM(Net_amount), ''),
Purchase_method = NULLIF(TRIM(Purchase_method), ''),
location = NULLIF(TRIM(location), '');

SET SQL_SAFE_UPDATES = 0;

SELECT *
FROM ecommerce_sales_staging
WHERE 
    TRIM(customer_id) = ''
    OR TRIM(Transaction_id) = ''
    OR TRIM(Gender) = ''
    OR TRIM(Age_Group) = ''
    OR TRIM(Purchase_Date) = ''
    OR TRIM(product_category) = ''
    OR TRIM(discount_availed) = ''
    OR TRIM(Discount_name) = ''
    OR TRIM(Discount_amount_INR) = ''
    OR TRIM(Gross_amount) = ''
    OR TRIM(Net_amount) = ''
    OR TRIM(Purchase_method) = ''
    OR TRIM(location) = '';
    
# All Blanks replaced with null

select transaction_id, count(*) as count_duplicates 
from ecommerce_sales_staging 
group by  transaction_id
having count_duplicates > 1;

# Duplicates not found

select * from ecommerce_sales_staging;

alter table ecommerce_sales_staging
rename column `purchase_method` to Purchase_method;




UPDATE ecommerce_sales_staging
SET Gender = UPPER(Gender),
age_group = UPPER(age_group),
product_category = UPPER(product_category),
discount_availed = UPPER(discount_availed),
purchase_method = UPPER(purchase_method),
location = UPPER(location);

#case standardization

SELECT * 
FROM ecommerce_sales_staging
WHERE Net_amount<= 0;


ALTER TABLE ecommerce_sales_staging
ADD COLUMN Data_Flag VARCHAR(10);

update ecommerce_sales_staging 
set 
data_flag = 
case 
when discount_amount_INR > gross_amount then 'invalid'
else 'valid'
end;

# ~1% data flagged as invalid due to discount exceeding gross amount




    





