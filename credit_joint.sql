SELECT * FROM bmdb.credit;

select actorID, role
	from credit;
    
-- select from 3 tables
select concat(firstName, " ", lastName) as 'Actor Name', birthdate, c.role, title, rating, year, director
	from actor a
    join credit c
      on a.id = c.actorID
    join movie m
      on m.id = c.movieID
      order by year asc;
      
-- test selects
/* query all credits, showing movie title, year
actor name and role */
select title, year, role, concat(firstName, " ", lastName) as 'Actor Name'
  from movie
  join credit
	on movie.ID = credit.movieID
  join actor
    on actor.ID = credit.actorID;
    
-- Left join Movie - Credit
select movie.title, movie.year, credit.role
 from movie
 left join credit
 on movie.ID = credit.movieID;