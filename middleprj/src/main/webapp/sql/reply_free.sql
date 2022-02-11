create table reply_free (
    free_id number,
    reply_id number primary key,
    reply_writer varchar2(30),
    reply_content varchar2(500)
);

insert into reply_free values (1, 1, 'seol', '자유게시판 1번 글의 1 번째 댓글입니다.');

commit;