use Reports
go

select 
t3.Country, t3.StateOrProvince, t3.County, t3.City, t3.PostalCode,
sum(t1.QuantityPurchased) as QuantityPurchased, 
sum(t1.AmountSpent) as AmountSpent
from [dbo].[tblCustomerPurchases] t1
inner join [dbo].[tblFacility] t2 on t1.FacilityKey=t2.FacilityKey
inner join [dbo].[tblGeography] t3 on t2.GeographyKey=t3.GeographyKey
group by t3.Country, t3.StateOrProvince, t3.County, t3.City, t3.PostalCode
order by t3.Country, t3.StateOrProvince, t3.County, t3.City, t3.PostalCode

