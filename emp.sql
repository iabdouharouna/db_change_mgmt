create table emp(id number primary key, name varchar2(100), sal number);
insert into emp values(1,'Bill',100);
insert into emp values(2,'Anne',100);
insert into emp values(3,'Pat',100);
commit;

create or replace procedure emp_upgrade as
begin
 update emp set sal = sal + 100;
end emp_upgrade;
/

create or replace procedure emp_downgrade as
begin
 update emp set sal = sal/10;
end emp_downgrade;
/
