COPY customers FROM '/raw_data/olist_customers_dataset.csv' CSV HEADER;
COPY geolocation FROM '/raw_data/olist_geolocation_dataset.csv' CSV HEADER;
COPY orders FROM '/raw_data/olist_orders_dataset.csv' CSV HEADER;
COPY products FROM '/raw_data/olist_products_dataset.csv' CSV HEADER;
COPY sellers FROM '/raw_data/olist_sellers_dataset.csv' CSV HEADER;
COPY order_items FROM '/raw_data/olist_order_items_dataset.csv' CSV HEADER;
COPY order_payments FROM '/raw_data/olist_order_payments_dataset.csv' CSV HEADER;
COPY order_reviews FROM '/raw_data/olist_order_reviews_dataset.csv' CSV HEADER;
