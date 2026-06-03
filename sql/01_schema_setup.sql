-- FreshMart Inventory Database Schema
-- Run this once to create all tables

CREATE TABLE IF NOT EXISTS products (
    product_id      TEXT PRIMARY KEY,
    product_name    TEXT NOT NULL,
    category        TEXT NOT NULL,          -- Electronics / Clothing / Food & Beverages
    subcategory     TEXT,
    unit_cost       REAL,
    unit_price      REAL,
    supplier_id     TEXT
);

CREATE TABLE IF NOT EXISTS inventory (
    inventory_id        TEXT PRIMARY KEY,
    product_id          TEXT,
    warehouse_id        TEXT,
    stock_quantity      INTEGER,
    reorder_point       INTEGER,
    reorder_quantity    INTEGER,
    last_updated        DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE IF NOT EXISTS sales_transactions (
    transaction_id      TEXT PRIMARY KEY,
    product_id          TEXT,
    warehouse_id        TEXT,
    sale_date           DATE,
    quantity_sold       INTEGER,
    sale_amount         REAL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id         TEXT PRIMARY KEY,
    supplier_name       TEXT,
    lead_time_days      INTEGER,            -- how many days to restock
    reliability_score   REAL               -- 0 to 1
);

CREATE TABLE IF NOT EXISTS warehouses (
    warehouse_id        TEXT PRIMARY KEY,
    warehouse_name      TEXT,
    location_city       TEXT,
    capacity            INTEGER
);