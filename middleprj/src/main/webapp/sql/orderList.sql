create table orderList (
order_id number primary key,
order_name varchar2(50),
order_price number,
order_date date default sysdate,
members_id varchar2(50)
);

alter table orderList add constraint fk_members_id foreign key (members_id) references members (members_id) ON DELETE CASCADE;

insert into orderlist
values(1,'dd','55',sysdate,'micol');