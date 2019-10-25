use sales;
select count(emailid) as no_of_ads , emailid
from advertisement
group by emailid
order by count(emailid) desc
limit 1;
/*select emailid from advertisement
where count(emailid)= (select max(
*/
/*where ads=(select max(ads) from advertisement);
/*having ads=(select max(count(emailid)) from advertisement);
