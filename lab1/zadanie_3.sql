select TOP 10  od.order_id, SUM(p.price) as amount,  sum(od.quantity) as nb_of_orders, o.date 
		from order_details as od
		join orders as o on o.order_id = od.order_id
		join pizzas as p on p.pizza_id = od.pizza_id
		where MONTH(o.date) = 2
		group by od.order_id, o.date
		order by nb_of_orders desc;