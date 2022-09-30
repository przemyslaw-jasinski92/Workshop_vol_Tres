create table cinemas
(
    id        int auto_increment
        primary key,
    name      varchar(100) null,
    address   varchar(200) null,
    openTime  datetime     null,
    closeTime datetime     null
);

