use Reports
go

select 
year(t1.PurchaseDate) as PurchaseYear, 
DATEPART(QUARTER,t1.PurchaseDate) as PurchaseQuarter, 
month(t1.PurchaseDate) as PurchaseMonth, day(t1.PurchaseDate) as PurchaseDay,
t2.ProductName,
sum(t1.QuantityPurchased) as QuantityPurchased, 
sum(t1.AmountSpent) as AmountSpent
from [dbo].[tblCustomerPurchases] t1
inner join [dbo].[tblProduct] t2 on t1.ProductKey=t2.ProductKey
inner join [dbo].[tblCustomer] t3 on t1.CustomerKey=t3.CustomerKey
group by year(t1.PurchaseDate), DATEPART(QUARTER,t1.PurchaseDate), month(t1.PurchaseDate), day(t1.PurchaseDate), t2.ProductName
order by year(t1.PurchaseDate), DATEPART(QUARTER,t1.PurchaseDate), month(t1.PurchaseDate), day(t1.PurchaseDate), t2.ProductName
