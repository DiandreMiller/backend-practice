DROP DATABASE IF EXISTS cart_dev;
CREATE DATABASE cart_dev;

\c cart_dev;

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name TEXT NOT NULL,
    store_address TEXT NOT NULL,
    store_zip_code NUMERIC NOT NULL,
    store_city TEXT NOT NULL,
    store_image TEXT,
    store_hours TEXT NOT NULL,
    store_phone_number TEXT,
    accepts_ebt BOOLEAN DEFAULT true
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    store_id INTEGER NOT NULL REFERENCES stores,
    product_price DECIMAL (8,2) NOT NULL CHECK (product_price >= 0),
    product_weight DECIMAL (6,2) NOT NULL CHECK (product_weight >= 0),
    product_unit TEXT,
    is_organic BOOLEAN DEFAULT false,
    product_category TEXT NOT NUll,
    product_brand TEXT,
    product_description TEXT,
    product_image TEXT NOT NULL,
    is_vegetarian BOOLEAN DEFAULT false,
    is_frozen BOOLEAN DEFAULT false,
    is_fresh BOOLEAN DEFAULT false,
    is_non_processed BOOLEAN DEFAULT false,
    is_in_stock BOOLEAN DEFAULT true,
    allergens TEXT,
    is_kosher BOOLEAN DEFAULT false,
    is_halal BOOLEAN DEFAULT false,
    special_diet TEXT,
    health_label TEXT,
    certification TEXT,
    product_discount DECIMAL(4,2)
);

-- CREATE TABLE favorite(
--     product_id INTEGER NOT NULL REFERENCES products
-- )




CREATE TABLE reviews(
    reviewer_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES products,
    reviewer_rating NUMERIC NOT NULL,
    reviewer_comment TEXT,
    reviewer_time_stamp TIMESTAMP
);




-- The table below shows us what to do with the favorites:

-- CREATE TABLE customer_details(
-- product_id INTEGER,
-- order_id INTEGER,
-- price NUMERIC,
-- PRIMARY KEY (product_id, order_id)
-- );