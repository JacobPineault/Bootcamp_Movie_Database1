-- DDL bmdb
drop database if exists bmdb;
create database bmdb;
use bmdb;


-- create table for Actors
create table actor (
    id				int				not null primary key auto_increment,
    firstName		varchar(25)		not null,
    lastName		varchar(25)		not null,
    gender			varchar(6)		not null,
    birthDate		date			not null
    -- constraint unq_actor (firstName, lastName, birthDate)
    );
    
-- Create table for movies
create table movie ( 
	id				int				not null primary key auto_increment,
    title			varchar(100)	not null,
    year			int				not null,
    rating			varchar(5)		not null,
    director		varchar(50)		not null
    );
    
-- Create table for Credits
create table credit (
    id				int				not null primary key auto_increment,
    actorID			int				not null,
    movieID			int				not null,
    role			varchar(25)		not null,
    foreign key (movieID) references movie(id),
    foreign key (actorID) references actor(id)
    -- constaint act_mov unique (actorID, movieID)
    -- act_mov is a name used mostly for debugging. not relevent to other fields
    );

-- All inserts are Data Manipulation Language
-- values for Actor
-- if you fill all fields you are not required to lable each insert statement
insert into actor (id, firstName, lastName, gender, birthDate)
	values (1, 'Tim', 'Robbins', 'Male', '1959-10-16');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (2, 'Morgan', 'Freeman', 'Male', '1937-6-1');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (3, 'Jodie', 'Foster', 'Female', '1962-11-19');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (4, 'Nathony', 'Hopkins', 'Male', '1937-12-31');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (5, 'Tom', 'Hanks', 'Male', '1956-7-9');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (6, 'Michael', 'Duncan', 'Male', '1957-12-10');
  
-- values for Movie
insert into movie (id, title, year, rating, director)
	values (1, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont');
insert into movie (id, title, year, rating, director)
	values (2, 'The Silence of the Lambs', 1991, 'R', 'Jonathan Demme');
insert into movie (id, title, year, rating, director)
	values (3, 'The Green Mile', 1999, 'R', 'Frank Darabont');
    
-- values for Credit
-- if the ID is not called out in any other field for reference let the database handle the ID
-- no need to add in manually as it no other tables are depentant on that ID
insert into credit (id, actorID, movieID, role)
	values (1, 1, 1, 'Andy Dufresne');
insert into credit (id, actorID, movieID, role)
	values (2, 2, 1, 'Ellis Redding');
insert into credit (id, actorID, movieID, role)
	values (3, 3, 2, 'Clarice Starling');
insert into credit (id, actorID, movieID, role)
	values (4, 4, 2, 'Hannibal Lecter');
insert into credit (id, actorID, movieID, role)
	values (5, 5, 3, 'Paul Edgecomb');
insert into credit (id, actorID, movieID, role)
	value (6, 6, 3, 'John Coffey');