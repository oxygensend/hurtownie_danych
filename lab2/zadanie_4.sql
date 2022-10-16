-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-13 14:12:31.428

-- tables
-- Table: Client
CREATE TABLE Client (
    id int  NOT NULL,
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

-- Table: Fruit
CREATE TABLE Fruit (
    id int  NOT NULL,
    quantity int  NOT NULL,
    pricePerKg float(2)  NOT NULL,
    FruitCategory_id int  NOT NULL,
    CONSTRAINT Fruit_pk PRIMARY KEY  (id)
);

-- Table: FruitCategory
CREATE TABLE FruitCategory (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    CONSTRAINT FruitCategory_pk PRIMARY KEY  (id)
);

-- Table: Order
CREATE TABLE "Order" (
    id int  NOT NULL,
    fruitQuantity int  NOT NULL,
    orderAmount int  NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY  (id)
);

-- Table: OrderDetails
CREATE TABLE OrderDetails (
    id int  NOT NULL,
    Delivery_id int  NOT NULL,
    Client_id int  NOT NULL,
    Date_id int  NOT NULL,
    Fruit_id int  NOT NULL,
    Time_id int  NOT NULL,
    Order_id int  NOT NULL,
    CONSTRAINT OrderDetails_pk PRIMARY KEY  (id)
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
-- Reference: FruitID_FruitCategory (table: Fruit)
ALTER TABLE Fruit ADD CONSTRAINT FruitID_FruitCategory
    FOREIGN KEY (FruitCategory_id)
    REFERENCES FruitCategory (id);

-- Reference: OrderDetails_Order (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT OrderDetails_Order
    FOREIGN KEY (Order_id)
    REFERENCES "Order" (id);

-- Reference: Order_Client (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT Order_Client
    FOREIGN KEY (Client_id)
    REFERENCES Client (id);

-- Reference: Order_Date (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT Order_Date
    FOREIGN KEY (Date_id)
    REFERENCES Date (id);

-- Reference: Order_Delivery (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT Order_Delivery
    FOREIGN KEY (Delivery_id)
    REFERENCES Delivery (id);

-- Reference: Order_ProductID (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT Order_ProductID
    FOREIGN KEY (Fruit_id)
    REFERENCES Fruit (id);

-- Reference: Order_Time (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT Order_Time
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

-- Sequence: FruitCategory_seq
CREATE SEQUENCE FruitCategory_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: Fruit_seq
CREATE SEQUENCE Fruit_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: OrderDetails_seq
CREATE SEQUENCE OrderDetails_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: Order_seq
CREATE SEQUENCE Order_seq
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

