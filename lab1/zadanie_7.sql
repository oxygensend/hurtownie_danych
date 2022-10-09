select RIGHT(p.pizza_id,1) as size, count(od.order_id ) as count
	   from pizzas as p 
	   join order_details as od on od.pizza_id = p.pizza_id
	   join orders as o on o.order_id = od.order_id
	   where o.date >= '2015-02-01' AND o.date <= '2015-03-31'	
	   group by RIGHT(p.pizza_id,1)
	   