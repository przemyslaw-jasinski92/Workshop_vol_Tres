create table tickets
(
    id       int auto_increment
        primary key,
    quantity int            null,
    price    decimal(10, 2) null,
    status   int default 0  null
);

