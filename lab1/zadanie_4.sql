with temp_table as(
select od.order_id as order_id, SUM(p.price) as amount , date
	from order_details as od
	join orders as o on o.order_id = od.order_id
	join pizzas as p on p.pizza_id = od.pizza_id
	group by date, od.order_id
),
temp_table2 as (
select MONTH(date) as month, AVG(amount) as average_month_amount 
	  from temp_table
	  group by MONTH(date)
)

select order_id, amount, average_month_amount, date 
	from temp_table
	join temp_table2 on MONTH(temp_table.date) = temp_table2.month





