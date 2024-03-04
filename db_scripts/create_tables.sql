/* Our Orders table. We automatically generate the ID. The other attributes are all NUMBER. We also include an index for order_id since we reference that later in the actual application. */

drop table orders;

drop table products;

drop table museums;

drop table campaigns;

CREATE TABLE orders
(order_id NUMBER GENERATED ALWAYS AS IDENTITY,
product_id NUMBER(6) NOT NULL,
quantity NUMBER(8),
total_price NUMBER(8,2)
);

CREATE UNIQUE INDEX order_pk ON orders (order_id);

ALTER TABLE orders ADD (CONSTRAINT order_pk PRIMARY KEY (order_id));

/* Our Products table. We automatically generate the product_id. The other attributes are either VARCHAR or NUMBER. We also include an index for product_id since we reference that later in the actual application. */

CREATE TABLE products
(product_id NUMBER GENERATED ALWAYS AS IDENTITY,
product_name VARCHAR2(50),
product_description VARCHAR2(2000),
product_status VARCHAR2(20),
product_price NUMBER(8,2)
);

CREATE UNIQUE INDEX products_pk on products (product_id) ;

ALTER TABLE products ADD ( CONSTRAINT product_pk PRIMARY KEY (product_id));

/* Our Museums table. We automatically generate the museum_id. The other attributes are either VARCHAR or NUMBER. We also include an index for product_id since we reference that later in the actual application. */

create table museums (
museum_id NUMBER GENERATED ALWAYS AS IDENTITY,
museum_name varchar2(500),
museum_location varchar2(500),
museum_lat NUMBER(8,6),
museum_long NUMBER(9,6)
);

CREATE UNIQUE INDEX museum_pk on museum (museum_id) ;

ALTER TABLE museums ADD ( CONSTRAINT museum_pk PRIMARY KEY (museum_id));

/* An optional Campaigns table if you'd like to build on the already existing Workshop. This is part of an optional Lab where you are challenged to create a newsletter signup option, for current and prospective customers. Take what you've learned throughout this Workshop and put it practice. Be sure to show your work and share it with us on Twitter; tag our profile (OracleREST)! */

/*CREATE TABLE campaigns(
user_id NUMBER GENERATED ALWAYS AS IDENTITY,
customer_first_name VARCHAR2(100)
curstomer_last_name VARCHAR2(100)
customer_email VARCHAR2(100)
campaign_type VARCHAR2(100)
);

CREATE UNIQUE INDEX campaigns_pk ON campaigns (user_id);

ALTER TABLE campaigns ADD (CONSTRAINT campaigns_pk PRIMARY KEY (customer_id)); */

commit;