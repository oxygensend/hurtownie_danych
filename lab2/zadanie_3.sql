-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-13 14:10:10.762

-- tables
-- Table: Client
CREATE TABLE Client (
    id int  NOT NULL,
    phone varchar(9)  NOT NULL,
    addres varchar(255)  NOT NULL,
    name varchar(50)  NOT NULL,
    surname varchar(50)  NOT NULL,
    CONSTRAINT Client_pk PRIMARY KEY  (id)
);

-- Table: Date
CREATE TABLE Date (
    id int  NOT NULL,
    year int  NOT NULL,
    month int  NOT NULL,
    day int  NOT NULL,
    hour int  NOT NULL,
    minute int  NOT NULL,
    second int  NOT NULL,
    CONSTRAINT Date_pk PRIMARY KEY  (id)
);

-- Table: Delivery
CREATE TABLE Delivery (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    nip varchar(10)  NOT NULL,
    addres varchar(255)  NOT NULL,
    CONSTRAINT Delivery_pk PRIMARY KEY  (id)
);

-- Table: OrderDetail
CREATE TABLE OrderDetail (
    id int  NOT NULL,
    Delivery_id int  NOT NULL,
    Client_id int  NOT NULL,
    Date_id int  NOT NULL,
    Product_id int  NOT NULL,
    Time_id int  NOT NULL,
    CONSTRAINT OrderDetail_pk PRIMARY KEY  (id)
);

-- Table: Product
CREATE TABLE Product (
    id int  NOT NULL,
    ISBN varchar(13)  NOT NULL,
    authorID integer  NOT NULL,
    pages int  NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY  (id)
);

-- Table: Time
CREATE TABLE Time (
    id int  NOT NULL,
    hour int  NOT NULL,
    minute int  NOT NULL,
    second int  NOT NULL,
    CONSTRAINT Time_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Order_Client (table: OrderDetail)
ALTER TABLE OrderDetail ADD CONSTRAINT Order_Client
    FOREIGN KEY (Client_id)
    REFERENCES Client (id);

-- Reference: Order_Date (table: OrderDetail)
ALTER TABLE OrderDetail ADD CONSTRAINT Order_Date
    FOREIGN KEY (Date_id)
    REFERENCES Date (id);

-- Reference: Order_Delivery (table: OrderDetail)
ALTER TABLE OrderDetail ADD CONSTRAINT Order_Delivery
    FOREIGN KEY (Delivery_id)
    REFERENCES Delivery (id);

-- Reference: Order_ProductID (table: OrderDetail)
ALTER TABLE OrderDetail ADD CONSTRAINT Order_ProductID
    FOREIGN KEY (Product_id)
    REFERENCES Product (id);

-- Reference: Order_Time (table: OrderDetail)
ALTER TABLE OrderDetail ADD CONSTRAINT Order_Time
    FOREIGN KEY (Time_id)
    REFERENCES Time (id);

-- sequences
-- Sequence: Client_seq
CREATE SEQUENCE Client_seq
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

-- Sequence: Delivery_seq
CREATE SEQUENCE Delivery_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: OrderDetail_seq
CREATE SEQUENCE OrderDetail_seq
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

-- Sequence: Time_seq
CREATE SEQUENCE Time_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- End of file.

