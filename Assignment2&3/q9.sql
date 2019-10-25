USE sales;
/*select manufacturer,model,price,id from product where price>(select avg(price) from product);*/
select product.manufacturer,product.model,product.price,user1.name1 from user1
inner join product on emailid in (select emailid from advertisement
					where id=product.id and product.price>(select avg(price) from product));
