create table movies
(
    id          int auto_increment
        primary key,
    title       varchar(100)      null,
    description varchar(1000)     null,
    rating      decimal(10, 2)    null,
    director    varchar(50)       null,
    watchCount  int               null,
    isTop       tinyint default 0 null
);

