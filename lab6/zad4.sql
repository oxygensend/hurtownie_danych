select 
	OrganizationKey,
	DepartmentGroupKey,
	SUM(Amount) as amount
	from FactFinance
	group by cube(OrganizationKey, DepartmentGroupKey)