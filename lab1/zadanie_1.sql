with temp_table as (
	SELECT od.order_id, SUM(p.price) as sum_price, o.date
	FROM [cwiczenia_1] . [dbo] . [order_details] as od
	JOIN orders as o on o.order_id =  od.order_id
	JOIN pizzas as p on od.pizza_id = p.pizza_id
	where o.date = '2015-02-18'
	group by od.order_id, o.date
)

select AVG(sum_price) as average_price, date FROM temp_table GROUP BY date;


