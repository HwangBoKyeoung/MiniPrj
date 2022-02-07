create table gym(
    gym_name varchar2(20),
    gym_loc varchar2(50),
    gym_add varchar2(50),
    gym_tel varchar2(20),
    gym_mail varchar2(30),
    gym_start number,
    gym_end number,
    gym_id number primary key
);

insert into gym values('GymYD', 'Republic of Korea', '403, Jungang-daero, Jung-gu, Daegu', '053-123-4567', 'gymYD@email.com', 7, 22, 1);