use Sales;
select DISTINCT model from product where model in (select model from product group by model having count(model)=(select count(model) from product group by model order by count(model)  limit 1)order by count(model) DESC);




