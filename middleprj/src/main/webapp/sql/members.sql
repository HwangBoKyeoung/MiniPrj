create table members
(
    MEMBERS_ID varchar2(50) primary key,
    MEMBERS_PASSWORD varchar2(512) NOT NULL,
    MEMBERS_NAME varchar2(50) NOT NULL,
    MEMBERS_TEL varchar2(20),
    MEMBERS_ADDRESS varchar2(200),
    MEMBERS_AUTHOR varchar2(20) default 'user',
    MEMBERS_MEMBERSHIP varchar2(20) DEFAULT 'no'
);

insert into members(members_id,members_password,members_name,members_tel,members_address, members_author) values('hbk','1111','관리자','010-1234-1234','대구 중구','admin');
insert into members(members_id,members_password,members_name,members_tel,members_address) values('micol','1234','micol','010-1234-1234','대구 중구');