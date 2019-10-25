drop database Sales;
create database Sales;

use Sales;

create table user1 (emailid varchar(255), name1 varchar(255), designation varchar(255), mobilenumber varchar(255), primary key(emailid));
create table advertisement (initiationdate varchar(255),id int, primary key (id), producttype varchar(255),emailid varchar(255), foreign key (emailid) references user1(emailid)on update cascade on delete cascade );
create table laptop (manufacturer varchar(255), model varchar(255), purchaseyear varchar(255), batterystatus varchar(255), price int,id int, foreign key (id) references advertisement(id) on delete cascade on update cascade);
create table mobile (manufacturer varchar(255), mobilename varchar(255), purchaseyear varchar(255), price int,id int, foreign key (id) references advertisement(id) on delete cascade on update cascade);
create table book (bookname varchar(255), price int, bookcondition varchar(255),id int, foreign key(id) references advertisement(id) on delete cascade on update cascade);
create table author (author1 varchar(255), author2 varchar(255), author3 varchar(255),id int, foreign key(id) references advertisement(id) on delete cascade on update cascade);
create table sale (sellerid varchar(255),buyerid varchar(255), id int, foreign key(id) references advertisement(id) on update cascade on delete cascade,foreign key(sellerid) references user1(emailid) on update cascade on delete cascade, foreign key(buyerid) references user1(emailid) on update cascade on delete cascade);
                     
insert into user1 values ('abc@gmail.com','abc','student','123');
insert into user1 values ('xyz@gmail.com','xyz','faculty','234');
insert into user1 values ('pqr@gmail.com','pqr','staff','345');
insert into user1 values ('dhanuj@gmail.com','dhanuj','staff','334');
insert into user1 values ('varshini@gmail.com','varshini','faculty','342');

insert into advertisement values ('2016-05-05','01','laptop','abc@gmail.com');
insert into advertisement values ('2017-05-05','02','mobile','xyz@gmail.com');
insert into advertisement values ('2018-05-05','03','laptop','pqr@gmail.com');
insert into advertisement values ('2016-05-06','04','book','pqr@gmail.com');
insert into advertisement values ('2017-05-07','05','mobile','abc@gmail.com');
insert into advertisement values ('2018-05-08','06','book','xyz@gmail.com');
insert into advertisement values ('2016-06-05','07','laptop','pqr@gmail.com');

insert into laptop values ('hp','pavilion','2017','good','50000','01');
insert into laptop values ('lenovo','notebook','2016','good','40000','03');
insert into laptop values ('lenovo','notebook','2016','good','40000','07');

insert into mobile values ('1+','oneplus 5T','2017','33000','02');
insert into mobile values ('moto','Moto3G Turbo','2018','3000','05');

insert into book values ('The lord of rings','7000','good','04');
insert into book values ('Harry Potter','2200','good','06');

insert into author values ('gary','dhanuj','varshini','04');
insert into author values ('jk rowly','neema','allu','06');

insert into sale values ('xyz@gmail.com','dhanuj@gmail.com','02');
insert into sale values ('abc@gmail.com','varshini@gmail.com','01');