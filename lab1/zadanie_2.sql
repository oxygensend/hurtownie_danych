select od.order_id, o.date from pizza_types as pt
join pizzas as p on p.pizza_type_id = pt.pizza_type_id
join order_details as od on od.pizza_id = p.pizza_id
join orders as o on o.order_id = od.order_id
where MONTH(o.date) = 3 and YEAR(o.date) = 2015
group by od.order_id, o.date having STRING_AGG(pt.ingredients, ',') not like '%Pineapple%' ;