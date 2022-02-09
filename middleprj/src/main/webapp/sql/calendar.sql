create table calendar(
cal_title varchar2(100) not null,
start_date date,
end_date date,
all_day number(1)
);

insert into calendar (cal_title, start_date, end_date,all_day)
values ('바디컴뱃',to_date('2022/02/08 13:30','YYYY/MM/DD HH24:MI'), to_date('2022/02/08 15:30','YYYY/MM/DD HH24:MI'),1);
