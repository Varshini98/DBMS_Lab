use sales;
select emailid from advertisement
where id in (select id from mobile where mobilename='Moto3G Turbo');

/*
use sales;
select name1 from user1
where emailid in (select buyerid from sale where productid in(select id from mobiles
                                                               where mobilename='Moto3G Turbo');
*/