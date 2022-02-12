create table orderList (
order_id number,
order_name varchar2(50) primary key,
order_price number,
order_date date default sysdate,
members_id varchar2(50),
members_membership varchar2(20) 
);

insert into orderlist
values(1,'dd','55',sysdate,'hbk', 'no');