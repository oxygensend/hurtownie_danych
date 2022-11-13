with temp as (
	select
	MONTH(OrderDate) as month_of_year,
	SUM(SalesAmount) as amount,
	SalesTerritoryKey
	from FactInternetSales
	where YEAR(OrderDate)=2011
	group by MONTH(OrderDate), SalesTerritoryKey
)

select * from temp 
		pivot(
		sum(amount)
		for SalesTerritoryKey in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10])
		) as pivot_table;