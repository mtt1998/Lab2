create database BookDB;
use BookDB;
create table Author
(
	authorId int unsigned auto_increment primary key,
	name char(200) not null,
	age int unsigned null,
	country char(200) null,
	index(name)
) character set = utf8;

create table Book
(
	isbn char(30) not null primary key,
	title text not null, 
	authorId int unsigned not null, 
	publisher text not null, 
	publishDate DATE not null,
	price float null default 0,
	foreign key(authorId) references Author(authorId)
) character set = utf8;



