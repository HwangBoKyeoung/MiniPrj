create table bulletin_deal(
    deal_id number primary key,
    deal_title varchar2(50),
    deal_subject varchar2(500),
    deal_writer varchar2(30),
    deal_date date,
    deal_hit number default 0
);


insert into bulletin_deal values (1, '거래게시판 제목1', '거래게시판 내용1', 'micol', sysdate, 0);
insert into bulletin_deal values (2, '거래게시판 제목2', '거래게시판 내용2', 'micol', sysdate, 0);

commit;