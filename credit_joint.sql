SELECT * FROM bmdb.credit;

select actorID, role
	from credit;
    
-- select from 3 tables
select firstName, lastName, birthdate, c.role, title, year, director, rating
	from actor a
    join credit c
      on a.id = c.actorID
    join movie m
      on m.id = c.movieID
      order by year asc;