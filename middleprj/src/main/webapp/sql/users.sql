create table users
(
    user_id varchar2(30) references members(members_id),
    user_height number(20),
    user_weight number(30),
    user_bmi number(30),
    user_favorite varchar2(50)
);

insert into users values ('micol',1.67,68.5,24.4,'exercise');