create table payments
(
    id           int auto_increment
        primary key,
    type         char(10) null,
    payment_date date     null,
    constraint payments_ibfk_1
        foreign key (id) references tickets (id),
    constraint payments_ibfk_2
        foreign key (id) references tickets (id)
            on delete cascade
);

