create table bulletin_notice(
    notice_id number primary key,
    notice_title varchar2(50),
    notice_subject varchar2(500),
    notice_writer varchar2(30),
    notice_date date,
    notice_hit number
);

insert into bulletin_notice
values(1, '공지사항', '공지합니다.', '관리자', sysdate, 0);
