drop view sales_carrier;
create view sales_carrier with schemabinding as
	select f.order_details_id,
	f.order_id,
	f.customer_key,
	f.pizza_id,
	f.quantity,
	f.date,
	f.time,
	cr.carrier_id,
	cr.carrier_name,
	cr.address,
	cr.tax_id,
	cr.contact_person
	from [dbo].[facts_sales] as f
	join [dbo].[carrier] as cr on cr.carrier_id = f.carrier_id;


create unique clustered index ix_carrier_sales on
	sales_carrier 
	(order_details_id, pizza_id, quantity, date, customer_key, time, carrier_id, order_id, carrier_name, address, tax_id, contact_person);

