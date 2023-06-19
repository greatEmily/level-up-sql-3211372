-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Type, Name, Price, Description
FROM 
  dishes
ORDER BY price DESC;

SELECT *
FROM 
  Dishes
WHERE
  type = "Appetizer"
  OR
  type = "Beverage"
ORDER BY type;

SELECT *
FROM 
  Dishes
WHERE
  type <> "Beverage"
ORDER BY type;