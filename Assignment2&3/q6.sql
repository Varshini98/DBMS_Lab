use sales;

select t1.id,t1.sellername,user1.name1 as buyername from user1
inner join (select sale.id,sale.buyerid,sale.sellerid as sellerid,user1.name1 as sellername from user1
inner join sale on sale.sellerid=user1.emailid) as t1 on t1.buyerid=user1.emailid;
