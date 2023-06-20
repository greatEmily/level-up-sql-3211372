-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT 
  Count(Orders.OrderID) AS 'Count',
  FirstName,
  LastName,
  Email

FROM Orders

JOIN Customers ON Customers.CustomerID = Orders.CustomerID

GROUP BY Orders.CustomerID
ORDER BY Count DESC;
  