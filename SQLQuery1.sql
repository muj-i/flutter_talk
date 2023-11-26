create database lab1;
use lab1;

create table branch(
	branch_name varchar(30),
	branch_city varchar(30),
	assets int

);

select * from branch;

alter table branch add primary key(branch_name);

insert into branch values
('rajshai','rajshahi',2000),
('rajshai','rajshahi',2000),
('rajshai','rajshahi',2000);

 alter table branch add location varchar(20);

 update branch set  location='raj'  ;
 alter table branch add salary int;
 
 update branch set salary=100;

 alter table branch drop column location ;

 insert into branch values('Gulshan','Dhaka',447);

 select  distinct branch_city from branch;

  select  all  branch_city from branch;


  create table tab1( customer_name varchar(20), loan_number int);

    create table tab2(loan_number int,branch_name varchar(20), amount int );

	select * from tab1;
		select count( *) from tab2;


		insert into tab1 values('sajib',101);
		insert into tab1 values('sajib malek',102);

			insert into tab2 values( 136,'raj',21000);
			insert into tab2 values( 144,'raj',2000);

			select loan_number from tab1 union 	select loan_number from tab2 

				select loan_number from tab1 except select loan_number from tab2 

				select loan_number from tab1 intersect select loan_number from tab2 





 


