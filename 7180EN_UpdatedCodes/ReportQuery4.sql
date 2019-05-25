use Reports
go

select 
year(t1.PurchaseDate) as PurchaseYear,
t2.ProductCategory,
t2.ProductName,
sum(t1.QuantityPurchased) as QuantityPurchased, 
sum(t1.AmountSpent) as AmountSpent
from [dbo].[tblCustomerPurchases] t1
inner join [dbo].[tblProduct] t2 on t1.ProductKey=t2.ProductKey
group by year(t1.PurchaseDate), t2.ProductCategory, t2.ProductName
order by year(t1.PurchaseDate), t2.ProductCategory, t2.ProductName

