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
        PREFERENCES varchar(50) not null,
        LOANS int not null,        
        foreign key(LOANS) references Loans(PRODUCT_NO),
        foreign key(PREFERENCES) references Genres(GENRE_NAME),
        foreign key(CONTACT_DETAILS) references Addresses(ID))
        engine = innodb;


#create table for loans
create table Loans(
		ID int not null,
        RENEWAL_DATE date not null,
        PRODUCT_NO int not null primary key,
        GENRE varchar(50) not null,
        foreign key(GENRE) references Genres(GENRE_NAME));



#create table for genres         
create table Genres(
		ID int not null,
        GENRE_NAME varchar(50) not null primary key,
        DESCRIPTION_ text not null);
        
#create table for mailing address
create table Addresses(
		ID int not null primary key,
        EMAIL varchar(50) not null,
        ADDRESS_LINE_1 varchar(50) not null,
        ADDRESS_LINE_2 varchar(50) not null,
        CITY varchar(50) not null,
        PHONE_NO bigint not null);




	

#testing functionality

#inserting genres
insert into Genres (ID, GENRE_NAME, DESCRIPTION_) 
values ('1', 'romance', 'love stories'),
('2', 'thriller', 'suspenseful'),
('3', 'biography', 'true stories'),
('4', 'poetry', 'collections of poems'),
('5', 'non-fiction', 'informative books'),
('6', 'education', 'textbooks and workbooks'),
('7', 'crime', 'detectives etc'),
('8', 'history', 'historical books'),
('9', 'young adult', 'aimed at teenagers'),
('10', 'childrens', 'aimed at kids'),
('11', 'fantasy', 'involving magical elements and inspired by mythology'),
('12', 'music', 'a collection of karaoke books'),
('13', 'cookbooks', 'collections of recipes');

#inserting addresses
insert into Addresses
values('1', 'harrystyles@gmail.com', 'big house', 'big road', 'shropshire', '07849263782'),
('2', 'jesuschrist@gmail.com', 'the church', 'yeah', '__', '07389472536'),
('3', 'maryberry@gmail.com', 'the bake off tent', 'channel 4', 'britain', '07293846028');
 
 
 #inserting loans
 insert into Loans (ID, RENEWAL_DATE, PRODUCT_NO, GENRE)
 values('1', '2022-04-01', '00002', 'music'),
 ('2', '2022-04-17', '0321', 'fantasy'),
 ('3', '2022-06-01', '1092', 'cookbooks');


#inserting users
#preferences lists the ID corresponding to the preferred genre (might rename it to favourites)
insert into LibraryUsers (ID, USER_ID, FIRST_NAME, LAST_NAME, CONTACT_DETAILS, D_O_B, PREFERENCES, LOANS)
values ('1', '0001', 'Harry', 'Styles', 1, '1994-02-01', 'music', 1),
('2', '0002', 'Jesus', 'Christ', 2, '0000-00-00', 'fantasy', 2),
('3', '0003', 'Mary', 'Berry', 3, '1985-03-24', 'cookbooks', 3);

#having problems inserting users due to child row loans




#showing existing tables
show tables;

DROP database Exercise18;




        
        



        