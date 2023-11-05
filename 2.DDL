mysql> use Abhi;

mysql> show tables;

mysql> create table client_master(client_no int,client_name varchar(20),address
varchar(50),city varchar(10),pincode int,state varchar(20), bal_due float,primary
key(client_no));

mysql> select * from client_master;

mysql> insert into client_master
values('001','abhi','nasik','nasik','422004','MH','5000');

mysql> insert into client_master values('002','piyu','nasik','nasik','422004','MH','10000');

mysql> insert into client_master values('003','abd','nasik','nasik','422003','MH','5000');

mysql> insert into client_master values('004','abd','nasik','nasik','422003','MH','5000');

mysql> insert into client_master values('005','abc','nasik','nasik','422003','MH','5000');

mysql> select * from client_master;

mysql> select client_name,client_no from client_master;

mysql> insert into client_master values('006','xyz','nasik','nasik','422004','MH','6000');

mysql> select client_name,client_no from client_master;

mysql> create table product_master(product_no int,description varchar(20),profit_per
float,unit_measure varchar(10),quantity int,reorder int,sell_price float,cost_price
float,primary key(product_no));

mysql> insert into product_master values('001','shampoo','1','one','4','2','10','15');

mysql> insert into product_master values('002','oil','13','one','4','2','11','16');

mysql> alter table client_master add telephone_no int;

mysql> select * from client_master;

mysql> select * from product_master;

mysql> create index client_search on client_master(client_no);

mysql> create table auto(roll_no int NOT NULL AUTO_INCREMENT,name
varchar(20),primary key(roll_no));

mysql> select * from auto;

mysql> insert into auto values('1','abc');

mysql> insert into auto values('2','adc');

mysql> alter table auto auto_increment=100;

mysql> select * from auto;

mysql> insert into auto values(null,'abd');

mysql> select * from auto;

mysql> insert into auto values(null,'reh');

mysql> select * from auto;

mysql> update client_master set client_name="nut" where client_no='4';

mysql> select * from client_master;

mysql> create index client_find on client_master(client_name,city);

mysql> show tables;

mysql> select * from product_master;

mysql> desc product_master;

mysql> alter table client_master rename to c_master;

mysql> insert into product_master values('003','nutela','15','three','40','5','110','123');

mysql> alter table product_master modify sell_price float(10,2);

mysql> desc product_master;

mysql> create view client as select client_no,client_name from c_master;

mysql> select * from client;

