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
        EMAIL varchar(100) not null,
        D_O_B date not null,
        PREFERENCES int not null,
        PURCHASES int not null,        
        foreign key(PURCHASES) references Purchases(PRODUCT_NO),
        foreign key(PREFERENCES) references Genres(ID))
        engine = innodb;

#create table for purchases
create table Purchases(
		ID int not null,
        ORDER_ID int not null,
        PRODUCT_NO int not null primary key auto_increment);



#create table for genres         
create table Genres(
		ID int not null primary key auto_increment,
        GENRE_NAME varchar(50) not null,
        DESCRIPTION_ text not null);
	

#testing functionality

insert into LibraryUsers(FIRST_NAME, LAST_NAME) values ('talia', 'blain');


        
        



        