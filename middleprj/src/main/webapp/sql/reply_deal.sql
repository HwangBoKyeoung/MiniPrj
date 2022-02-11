create table reply_deal (
    deal_id number,
    reply_id number primary key,
    reply_writer varchar2(30),
    reply_content varchar2(500)
);

insert into reply_deal values (1, 1, 'micol', '중고거래 게시판 1번 글의 1 번째 댓글입니다.');

commit;