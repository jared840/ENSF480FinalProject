DROP DATABASE IF EXISTS RENTALSYSTEM2;
CREATE DATABASE RENTALSYSTEM2;
USE RENTALSYSTEM2;

DROP TABLE IF EXISTS PROPERTIES;
CREATE TABLE PROPERTIES (
    Type    varchar(25) not null,
    Bedrooms    double, 
    Bathrooms   double,
    Furnished   boolean,
    Quadrant    varchar(2),
    Landlord    varchar(25),
    Status      boolean,
    State		varchar(25),
    PostalCode  varchar(7),
    primary key (PostalCode)
   
);

INSERT INTO  PROPERTIES (Type, Bedrooms, Bathrooms, Furnished, Quadrant, Landlord, Status, PostalCode)
VALUES
('Apartment', 2, 1, TRUE, 'NW', 'John', FALSE, 'A1B 0C3'),
('Duplex', 4, 2.5, TRUE, 'SE', 'John', TRUE, 'T6L 7U9'),
('Duplex', 3, 2, FALSE, 'SW', 'Abby', FALSE, 'T4H 5Y2');


DROP TABLE IF EXISTS RENTER;
CREATE TABLE RENTER (
	Email			varchar(25) not null,
	Name			varchar(25),
	Password		varchar(12),
    /* Search Criteria */
    Type            varchar(25),
    Bedrooms        double, 
    Bathrooms       double,
    Furnished       boolean,
    Quadrant        varchar(2),
	primary key (Email)
);

INSERT INTO RENTER (Email, Name, Password, Type, Bedrooms, Bathrooms, Furnished, Quadrant)
VALUES
('annie@email.com' , 'Annie' , 'annie123', NULL, NULL, NULL, NULL, NULL),
('benny@email.com' , 'Benny' , 'bennypass' , 'Apartment', NULL, NULL, TRUE, 'SW'),
('carl@email.com' , 'Carl', 'password', 'Duplex', 3, 2, FALSE, 'SW');


DROP TABLE IF EXISTS LANDLORD;
CREATE TABLE LANDLORD (
    Name          varchar(25) not null,
    Email         varchar(25) not null,
    primary key (Name)
);

INSERT INTO LANDLORD (Name, Email)
VALUES
('John' , 'john123@email.com'),
('Abby' , 'abby@email.com');

DROP TABLE IF EXISTS LANDLORDINBOX;
CREATE TABLE LANDLORDINBOX (
    Name          varchar(25) not null,
    Message       varchar(250) not null,
    primary key (Name)
);

DROP TABLE IF EXISTS MANAGER;
CREATE TABLE MANAGER (
    Email			varchar(25) not null,
	Name			varchar(25),
	Password		varchar(12),
    primary key (Email)
);