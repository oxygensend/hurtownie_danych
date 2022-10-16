select pt.pizza_type_id, pt.name, pt.category, count(od.order_id ) as popularity
	   from pizza_types as pt
	   join pizzas as p on pt.pizza_type_id = p.pizza_type_id
	   join order_details as od on od.pizza_id = p.pizza_id
	   join orders as o on o.order_id = od.order_id
	   where MONTH(o.date) = '1' AND YEAR(o.date) = '2015'
	   group by pt.pizza_type_id, pt.name, pt.category
	   order by popularity desc
