use sales;

create table product (manufacturer varchar(255), model varchar(255), price int, id int);
insert into product
select manufacturer,model,price,id from laptop
union
select manufacturer,mobilename,price,id from mobile
union
select bookname,bookname,price,id from book;

select * from product
where price>2000 and price<=3000;