create table calendar(
cal_title varchar2(100) not null,
start_date varchar2(30),
end_date varchar2(30),
all_day varchar(20)
);


insert into calendar
values('notice','2022-02-08','2022-02-08','true');

insert into calendar
values('write','2022-02-08','2022-02-08','true');

insert into calendar
values('delete','2022-02-08','2022-02-08','false');

insert into calendar
values('update','2022-02-08','2022-02-10','true');

insert into calendar
values('select','2022-02-08','2022-02-10','false');