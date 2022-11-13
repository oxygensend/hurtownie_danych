with dailyTransactions as (
	select 
		round(sum(SalesAmount),2) as amount,
		OrderDate
		from FactInternetSales group by OrderDate
)

select amount, AVG(amount)
	over ( order by OrderDate rows 3 preceding ) as avg,
	OrderDate
	from dailyTransactions