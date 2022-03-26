#create database
create database Exercise18;
#use database
use Exercise18;

#create table for users
create table LibraryUsers(
		ID int not null primary key auto_increment,
        USER_ID int not null,
        FIRST_NAME varchar(50) not null,
        LAST_NAME varchar(50) not null, 
        CONTACT_DETAILS int not null,
        D_O_B date not null,
        PREFERENCES int not null,
        LOANS int not null,        
        foreign key(LOANS) references Loans(PRODUCT_NO),
        foreign key(PREFERENCES) references Genres(ID),
        foreign key(CONTACT_DETAILS) references Addresses(ID))
        engine = innodb;

#create table for purchases
create table Loans(
		ID int not null,
        ORDER_ID int not null,
        PRODUCT_NO int not null primary key auto_increment);



#create table for genres         
create table Genres(
		ID int not null primary key auto_increment,
        GENRE_NAME varchar(50) not null,
        DESCRIPTION_ text not null);
        
#create table for mailing address
create table Addresses(
		ID int not null primary key,
        EMAIL varchar(50) not null,
        ADDRESS_LINE_1 varchar(50) not null,
        ADDRESS_LINE_2 varchar(50) not null,
        CITY varchar(50) not null,
        PHONE_NO int not null);




	

#testing functionality

insert into LibraryUsers(FIRST_NAME, LAST_NAME) values ('talia', 'blain');

#DROP database Exercise18;




        
        



        