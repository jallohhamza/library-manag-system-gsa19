 *Library Database management GSA 2019
 *Tables creation using MYSQL
 
 
 CREATE TABLE BOOKS(book_id int(10) not null,
 book_title varchar(50) not null,
 description varchar(50) not null,
 status varchar(50),
 author_id varchar(50) not null,
 primary key(book_id),
 constraint foreign key(author_id) references AUTHORS(author_id)) ; 
 
 CREATE TABLE AUTHORS(author_id int(10) not null,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 primary key(author_id)) ; 
 
 CREATE TABLE STUDENTS(student_id int(10) not null,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 major varchar(50) not null,
 address varchar(100),
 primary key(student_id)) ; 
 
 
 create table RENT (rent_id int(10) not null,
 student_id int(10) not null,
 book_name varchar(50) not null,
 book_id int(10) not null,
 rent_date date not null,
 return_date date not null,
 primary key(rent_id),
 constraint foreign key(book_id) references BOOKS(book_id),
 constraint foreign key(student_id) references STUDENTS(student_id)); 