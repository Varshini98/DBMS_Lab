use sales;
select manufacturer,model,count(manufacturer) as number from product
group by manufacturer 
order by count(manufacturer) desc
limit 1;