with temp as ( 
	select 
	OrganizationKey,
	SUM(Amount) as amount
	from  FactFinance
	where YEAR(Date)=2012
	group by OrganizationKey
	)

select 
	t.OrganizationKey,
	o.OrganizationName,
	t.amount,
	PERCENT_RANK() over (order by t.amount) as percentile ,
	STDEV(t.amount) over (order by t.amount) as std
	from temp as t
	join DimOrganization o on o.OrganizationKey=t.OrganizationKey