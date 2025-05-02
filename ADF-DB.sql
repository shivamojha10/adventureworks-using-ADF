CREATE OR REPLACE WAREHOUSE ADF_WH;
USE WAREHOUSE ADF_WH;
CREATE OR REPLACE DATABASE SALES_DW;
USE DATABASE SALES_DW;
CREATE OR REPLACE SCHEMA DW_SCHEMA;
USE SCHEMA DW_SCHEMA;

---create tables---

CREATE OR REPLACE TABLE dim_dates (
    datekey VARCHAR,
    date DATE,
    fiscal_year INTEGER,
    fiscal_quarter INTEGER,
    month VARCHAR,
    monthkey VARCHAR
);
show tables;

CREATE OR REPLACE TABLE dim_customers (
    customerkey VARCHAR,
    customer_id VARCHAR,
    customer VARCHAR,
    city VARCHAR,
    state_province VARCHAR,
    country_region VARCHAR,
    postal_code VARCHAR
);

SELECT * FROM dim_sales_order;


CREATE OR REPLACE TABLE dim_products (
    productkey INTEGER,
    sku VARCHAR,
    product VARCHAR,
    standardcost FLOAT,
    color VARCHAR,
    listprice FLOAT,
    model VARCHAR,
    subcategory VARCHAR,
    category VARCHAR
);

CREATE OR REPLACE TABLE dim_resellers (
    resellerkey VARCHAR,
    reseller_id VARCHAR,
    business_type VARCHAR,
    reseller VARCHAR,
    city VARCHAR,
    state_province VARCHAR,
    country_region VARCHAR,
    postal_code VARCHAR
);

CREATE OR REPLACE TABLE dim_sales_territory (
    salesterritorykey VARCHAR,
    region VARCHAR,
    country VARCHAR,
    group_name VARCHAR
);

CREATE OR REPLACE TABLE dim_sales_order (
    channel VARCHAR,
    salesorderlinkekey VARCHAR,
    sales_order VARCHAR,
    sales_order_line VARCHAR
);

CREATE OR REPLACE TABLE fact_sales (
    salesorderlinekey VARCHAR,
    resellerkey VARCHAR,
    customerkey VARCHAR,
    productkey VARCHAR,
    orderdatekey VARCHAR,
    duedatekey VARCHAR,
    shipdatekey VARCHAR,
    salesterritorykey VARCHAR,
    order_quantity INTEGER,
    unit_price FLOAT,
    extended_amount FLOAT,
    unit_discount_pc FLOAT,
    product_standard_cost FLOAT,
    total_product_cost FLOAT,
    sales_amount FLOAT
);
