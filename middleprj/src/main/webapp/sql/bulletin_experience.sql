
create table bulletin_experience(
    exp_id number primary key,
    exp_date date,
    exp_name varchar2(30),
    exp_tel varchar2(30),
    exp_city varchar2(30),
    exp_program varchar2(50),
    exp_message varchar2(500)
);

insert into bulletin_experience values (1, sysdate, '이예담', '010-1111-2222', '대구광역시', '스피닝', '신청합니다.');

commit;
