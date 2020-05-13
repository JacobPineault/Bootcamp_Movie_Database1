create table MovieGenre (
	ID 				int 			not null primary key auto_increment,
	MovieID 		int     		not null,
    GenreID         int             not null,
    foreign key     (MovieID) references Movie(ID),
    foreign key     (GenreID) references Genre(ID),
    constraint  mov_gen unique (MovieID, GenreID)
    );