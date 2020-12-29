create table Route 
(
R_code int constraint pk1 primary key,
R_name varchar(20),
R_address varchar(50),
R_phone bigint constraint uk1 unique
);
insert into Route values (101,'Gujrat', 'Gujrat Main Ada B-22', 03007124422);
insert into Route values (102,'Peshawar', 'Niazi Express B-92', 03001214455);
insert into Route values (103,'Sialkot', 'Sialkot Lari Ada B-101', 03002456321);
select *from Route
 drop table Route



 create table Employe  
( 
E_id int constraint pk2 primary key,
E_name varchar(20),
E_address varchar(30),
E_type varchar(20),
E_phone bigint constraint uk2 unique,
r_code int ,
constraint fk1 foreign key (r_code)  references Route(R_code),
);

insert into Employe values (01,'Ahmad','Gujrat','Cashier',030445511,101);
insert into Employe values (02,'Haider','Peshawar ','Receiptionist',030021455,102);
insert into Employe values (03,'Usman','Sialkot','Driver',0300025412,103);
 select *from Employe
  drop table Employe


  create table customer
(
c_ssc int constraint pk3 primary key,
c_name  varchar(20), 
c_cnic varchar(20)constraint uk3 unique,
c_phoneno bigint constraint uk4 unique,
);

insert into Customer values (0231,'Ali','34403-77068069-5',1009998877); 
insert into Customer values (4986,'Adeel','34403-77068069-6',8777887766); 
insert into Customer values (3215,'Atim','34403-77068069-7',3333222776); 
select *from customer
drop table customer


create table account
(
a_num int constraint pk4 primary key,
a_type varchar(20),
a_balence bigint,
C_ssc int,
r_code int,

constraint fk3 foreign key(C_ssc) references customer(c_ssc),
constraint fk4 foreign key (r_code)  references Route(R_code),
);

insert into account values (12345678,'driver',24000,0231,103); 
insert into account values (12345674,'conductor',32000,4986,102); 
insert into account values (12345673,'receiptionist',45980,3215,101); 
select *from account
drop table account


create table seat
(
s_id int constraint pk5 primary key,
s_type varchar(20),
s_amount int,
r_code int,
a_num int,
constraint fk5 foreign key (r_code) references route(r_code),
constraint fk6 foreign key (a_num) references account(a_num),
);
insert into seat values (001,'Gold',100,123,12345678); 
insert into seat values (002,'Standard',200,153,12345674); 
insert into seat values (003,'Diamond',300,432,12345673); 
select *from seat
drop table seat
