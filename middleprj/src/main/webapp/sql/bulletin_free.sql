create table bulletin_free(
    free_id number primary key,
    free_title varchar2(50),
    free_subject varchar2(500),
    free_writer varchar2(30),
    free_date date,
    free_hit number default 0
);

insert into bulletin_free values (1, '자유게시판 제목1', '자유게시판 내용1', 'micol', sysdate, 0);
insert into bulletin_free values (2, '자유게시판 제목2', '자유게시판 내용2', 'micol', sysdate, 0);

commit;