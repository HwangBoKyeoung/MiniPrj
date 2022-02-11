create table membership(
   membership_num number not null primary key,
   membership_name varchar2(20),
   membership_price number,
   membership_month number,
    membership_subject1 varchar2(100),
    membership_subject2 varchar2(100),
    membership_subject3 varchar2(100),
    membership_subject4 varchar2(100)
);

insert into membership(membership_num, membership_name, membership_price, membership_month, membership_subject1, membership_subject2, membership_subject3) values(1,'silver',50000,1,'24시간 이용','월 P.T 1회 제공', '락커룸 + 샤워실 무료 이용');
insert into membership(membership_num, membership_name, membership_price, membership_month, membership_subject1, membership_subject2, membership_subject3) values(2,'gold',100000,1,'24시간 이용','월 P.T 2회 제공', '락커룸 + 샤워실 무료 이용');
insert into membership(membership_num, membership_name, membership_price, membership_month, membership_subject1, membership_subject2, membership_subject3, membership_subject4) values(3,'platinum',150000,1,'24시간 이용','월 P.T 4회 제공', '락커룸 + 샤워실 무료 이용', '사우나 무료이용');