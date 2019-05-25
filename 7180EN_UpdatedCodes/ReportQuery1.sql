use Reports
go

select 
year(t1.PurchaseDate) as PurchaseYear, t2.ProductCategory, t3.Gender, 
sum(t1.QuantityPurchased) as QuantityPurchased, 
sum(t1.AmountSpent) as AmountSpent
from [dbo].[tblCustomerPurchases] t1
inner join [dbo].[tblProduct] t2 on t1.ProductKey=t2.ProductKey
inner join [dbo].[tblCustomer] t3 on t1.CustomerKey=t3.CustomerKey
group by year(t1.PurchaseDate), t2.ProductCategory, t3.Gender
order by year(t1.PurchaseDate), t2.ProductCategory, t3.Gender


