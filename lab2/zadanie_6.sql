-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-16 06:20:18.997

-- tables
-- Table: Address
CREATE TABLE Address (
    id int  NOT NULL,
    postal_code varchar(6)  NOT NULL,
    city varchar(50)  NOT NULL,
    street varchar(50)  NOT NULL,
    CONSTRAINT Address_pk PRIMARY KEY  (id)
);

-- Table: Brand
CREATE TABLE Brand (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT Brand_pk PRIMARY KEY  (id)
);

-- Table: Date
CREATE TABLE Date (
    id int  NOT NULL,
    day int  NOT NULL,
    month int  NOT NULL,
    year int  NOT NULL,
    CONSTRAINT Date_pk PRIMARY KEY  (id)
);

-- Table: Product
CREATE TABLE Product (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    amount int  NOT NULL,
    previous_product_id int  NOT NULL,
    Brand_id int  NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY  (id)
);

-- Table: WarehouseState
CREATE TABLE WarehouseState (
    id int  NOT NULL,
    Product_id int  NOT NULL,
    Address_id int  NOT NULL,
    Date_id int  NOT NULL,
    CONSTRAINT WarehouseState_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Product_Brand (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Brand
    FOREIGN KEY (Brand_id)
    REFERENCES Brand (id);

-- Reference: Product_Product (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Product
    FOREIGN KEY ()
    REFERENCES Product ();

-- Reference: WarehouseState_Address (table: WarehouseState)
ALTER TABLE WarehouseState ADD CONSTRAINT WarehouseState_Address
    FOREIGN KEY (Address_id)
    REFERENCES Address (id);

-- Reference: WarehouseState_Date (table: WarehouseState)
ALTER TABLE WarehouseState ADD CONSTRAINT WarehouseState_Date
    FOREIGN KEY (Date_id)
    REFERENCES Date (id);

-- Reference: WarehouseState_Product (table: WarehouseState)
ALTER TABLE WarehouseState ADD CONSTRAINT WarehouseState_Product
    FOREIGN KEY (Product_id)
    REFERENCES Product (id);

-- sequences
-- Sequence: Address_seq
CREATE SEQUENCE Address_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: Brand_seq
CREATE SEQUENCE Brand_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: Date_seq
CREATE SEQUENCE Date_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: Product_seq
CREATE SEQUENCE Product_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: WarehouseState_seq
CREATE SEQUENCE WarehouseState_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- End of file.

