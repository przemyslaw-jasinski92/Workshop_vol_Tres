create table screenings
(
    id        int auto_increment
        primary key,
    cinema_id int      not null,
    movie_id  int      not null,
    show_time datetime null,
    constraint screenings_ibfk_1
        foreign key (cinema_id) references cinemas (id),
    constraint screenings_ibfk_2
        foreign key (movie_id) references movies (id)
            on update cascade on delete cascade
);

create index cinema_id
    on screenings (cinema_id);

create index movie_id
    on screenings (movie_id);

