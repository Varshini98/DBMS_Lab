/*for update=q8
use sales;
update mobile
set mobilename='Moto3G Turbo'
where mobilename='Moto3G';

/*for alter=q13
use sales;
alter table advertisement
add column status varchar(255);

update advertisement
set status='SOLD'
where id in (select id from sale);

update advertisement
set status='NOT SOLD'
where id not in (select id from sale);

select * from advertisement
where initiationdate between '2017-01-10' and '2018-01-09';