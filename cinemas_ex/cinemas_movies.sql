create table cinemas_movies
(
    id        int auto_increment
        primary key,
    cinema_id int not null,
    movie_id  int not null,
    constraint cinemas_movies_ibfk_1
        foreign key (cinema_id) references cinemas (id)
            on delete cascade,
    constraint cinemas_movies_ibfk_2
        foreign key (movie_id) references movies (id)
);

create index movie_id
    on cinemas_movies (movie_id);

