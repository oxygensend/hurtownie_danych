-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-16 06:01:01.43

-- tables
-- Table: ArchivePerfomance
CREATE TABLE ArchivePerfomance (
    id int  NOT NULL,
    rating int  NOT NULL,
    Employee_pesel varchar(11)  NOT NULL,
    Date_id int  NOT NULL,
    CONSTRAINT ArchivePerfomance_pk PRIMARY KEY  (id)
);

-- Table: Date
CREATE TABLE Date (
    id int  NOT NULL,
    year int  NOT NULL,
    month int  NOT NULL,
    day int  NOT NULL,
    CONSTRAINT Date_pk PRIMARY KEY  (id)
);

-- Table: Employee
CREATE TABLE Employee (
    pesel varchar(11)  NOT NULL,
    address varchar(255)  NOT NULL,
    salary decimal(10,2)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY  (pesel)
);

-- foreign keys
-- Reference: ArchivePerfomance_Date (table: ArchivePerfomance)
ALTER TABLE ArchivePerfomance ADD CONSTRAINT ArchivePerfomance_Date
    FOREIGN KEY (Date_id)
    REFERENCES Date (id);

-- Reference: ArchivePerfomance_Employee (table: ArchivePerfomance)
ALTER TABLE ArchivePerfomance ADD CONSTRAINT ArchivePerfomance_Employee
    FOREIGN KEY (Employee_pesel)
    REFERENCES Employee (pesel);

-- sequences
-- Sequence: ArchivePerfomance_seq
CREATE SEQUENCE ArchivePerfomance_seq
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

-- End of file.

