DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS geolocation CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS sellers CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS order_payments CASCADE;
DROP TABLE IF EXISTS order_reviews CASCADE;

CREATE TABLE customers (
        customer_id               VARCHAR NOT NULL PRIMARY KEY,
        customer_unique_id        VARCHAR NOT NULL,
        customer_zip_code_prefix  VARCHAR,
        customer_city             VARCHAR,
        customer_state            VARCHAR
    );


CREATE TABLE geolocation (
        geolocation_zip_code_prefix  VARCHAR,
        geolocation_lat              FLOAT,
        geolocation_lng              FLOAT,
        geolocation_city             VARCHAR,
        geolocation_state            VARCHAR
    );


CREATE TABLE orders (
        order_id                       VARCHAR NOT NULL PRIMARY KEY,
        customer_id                    VARCHAR REFERENCES customers (customer_id),
        order_status                   VARCHAR,
        order_purchase_timestamp       TIMESTAMP,
        order_approved_at              TIMESTAMP,
        order_delivered_carrier_date   TIMESTAMP,
        order_delivered_customer_date  TIMESTAMP,
        order_estimated_delivery_date  TIMESTAMP
    );


CREATE TABLE products (
        product_id                  VARCHAR NOT NULL PRIMARY KEY,
        product_category_name       VARCHAR,
        product_name_lenght         FLOAT,
        product_description_lenght  FLOAT,
        product_photos_qty          FLOAT,
        product_weight_g            FLOAT,
        product_length_cm           FLOAT,
        product_height_cm           FLOAT,
        product_width_cm            FLOAT
    );


CREATE TABLE sellers (
        seller_id               VARCHAR NOT NULL PRIMARY KEY,
        seller_zip_code_prefix  VARCHAR,
        seller_city             VARCHAR,
        seller_state            VARCHAR
    );


CREATE TABLE order_items (
        order_id             VARCHAR REFERENCES orders (order_id),
        order_item_id        INT NOT NULL,
        product_id           VARCHAR REFERENCES products (product_id),
        seller_id            VARCHAR REFERENCES sellers (seller_id),
        shipping_limit_date  TIMESTAMP,
        price                FLOAT,
        freight_value        FLOAT
    );


CREATE TABLE order_payments (
        order_id              VARCHAR REFERENCES orders (order_id),
        payment_sequential    INT,
        payment_type          VARCHAR,
        payment_installments  INT,
        payment_value         FLOAT
    );


CREATE TABLE order_reviews (
        review_id                VARCHAR NOT NULL, -- not a primary key because it can be repeated
        order_id                 VARCHAR,
        review_score             INT,
        review_comment_title     TEXT,
        review_comment_message   TEXT,
        review_creation_date     TIMESTAMP,
        review_answer_timestamp  TIMESTAMP

    );