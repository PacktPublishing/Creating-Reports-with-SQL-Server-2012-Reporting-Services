--Bar chart query
select year(PurchaseDate) as PurchaseYear, 
sum(amountSpent) as amountSpent
from dbo.tblCustomerPurchases
group by year(PurchaseDate)
order by year(PurchaseDate)