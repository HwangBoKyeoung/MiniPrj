create table calendar(
cal_title varchar2(100) not null,
start_date varchar2(30),
end_date varchar2(30),
all_day varchar(20)
);

alter table calendar
add cal_id number;

alter table calendar
modify cal_id primary key;

insert into calendar
values('notice','2022-02-08','2022-02-08','true',1);

insert into calendar
values('write','2022-02-08','2022-02-08','true',2);

insert into calendar
values('delete','2022-02-08','2022-02-08','false',3);

insert into calendar
values('update','2022-02-08','2022-02-10','true',4);

insert into calendar
values('select','2022-02-08','2022-02-10','false',5);