-- Query for a sparkline
select t2.ProductCategory, 
year(t1.PurchaseDate)*100+month(t1.PurchaseDate) as YearMonth, 
sum(amountSpent) as AmountSpent
from dbo.tblCustomerPurchases t1
inner join dbo.tblProduct t2 
   on t1.ProductKey=t2.ProductKey
inner join dbo.tblSalesTarget t3 
   on t2.ProductCategoryKey=t3.ProductCategoryKey
where year(t1.PurchaseDate)>=2013 
group by t2.ProductCategory, year(t1.PurchaseDate)*100+month(t1.PurchaseDate)
order by t2.ProductCategory, year(t1.PurchaseDate)*100+month(t1.PurchaseDate)
