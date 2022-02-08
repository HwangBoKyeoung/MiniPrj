create table membership(
	membership_num number not null primary key,
	membership_name varchar2(20),
	membership_price number,
	membership_month number
);

insert into membership
values(1,'silver',50000,1);

insert into membership
values(2,'gold',100000,1);

insert into membership
values(3,'platinum',150000,1);