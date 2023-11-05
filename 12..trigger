mysql> use info; 

mysql> create table borrower2(roll_no int,name 
varchar(20),date_of_issue date,book

mysql> insert into borrower2 values('1','nick','2018-06-
10','wings_of_fire','avaliable','APJ');

mysql> insert into borrower2 values('2','mira','2018-05-
11','leaves_life','not_avaliable','borwarkar');

mysql> insert into borrower2 values('3','rina','2018-02-
12','unusal','avaliable','johar');

mysql> insert into borrower2 values('4','harsha','2018-06-
20','skylimit','avaliable','ingale');

mysql> insert into borrower2 values('5','tej','2018-04-
20','highway','not_avaliable','klm');

mysql> select *from borrower1;

//INSERT TRIGGER
mysql> delimiter //
mysql> create trigger library after insert on borrower1 for 
each row
 -> begin
 -> insert into audit1 
values(new.roll_no,new.name,new.date_of_issue,new.book_name,ne
w.status,new.author,current_timestamp);
 -> end;
 -> //

mysql> insert into borrower1 values('6','xyz','2018-09-
06','aaa','avaliable','xxx');
 -> //

mysql> select * from borrower1;
 -> //

mysql> select * from audit1;
 -> //

// UPDATE TRIGGER
mysql> delimiter //
mysql> create trigger library1 after update on borrower1 for 
each row
 -> begin
 -> insert into audit1 
values(new.roll_no,new.name,new.date_of_issue,new.book_name,ne
w.status,new.author,current_timestamp);
 -> end;
 -> //

mysql> update borrower1 set roll_no='8',book_name='leaf' 
where name='xyz';
 -> //

mysql> select *from borrower1;
 -> //

