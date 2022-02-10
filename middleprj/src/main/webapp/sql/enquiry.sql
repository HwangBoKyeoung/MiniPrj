create table enquiry(
    enquiry_id number primary key,
    enquiry_subject varchar2(50),
    enquiry_name varchar2(30),
    enquiry_email varchar2(50),
    enquiry_message varchar2(1000)
);

alter table enquiry
add enquiry_tel varchar2(15);

insert into enquiry
values(1,'subject', 'name', 'aaa@email.com', 'message', '01055558888');