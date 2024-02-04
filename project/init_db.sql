-- DB & tables
-- uncomment if not docker-compose 

-- CREATE DATABASE homework; 
-- CREATE ROLE tm_admin LOGIN ENCRYPTED PASSWORD 'admin';
-- GRANT SELECT, INSERT, UPDATE, DELETE ON orders, products, positions TO rm_admin;

CREATE TABLE orders (
    id UUID PRIMARY KEY, 
    name VARCHAR(200) NOT NULL, 
    datetime TIMESTAMP NOT NULL, 
    positions UUID[] DEFAULT '{}'
);

CREATE TABLE products (
    id UUID PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    count INTEGER NOT NULL
);

CREATE TABLE positions (
    id UUID PRIMARY KEY,
    count INTEGER NOT NULL, 
    order_id UUID REFERENCES orders, 
    product_id UUID REFERENCES products
);

-- User (actions: select, insert, update, delete)


INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Ice block', floor(random() * 20 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Green Tea', floor(random() * 50 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Coconut', floor(random() * 100 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Book', floor(random() * 10 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Baikal Tea', floor(random() * 10 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Pu-erh', floor(random() * 20 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Porridge', floor(random() * 10 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Plasticine', floor(random() * 50 + 100)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Fruit', floor(random() * 100 + 100)::int);
