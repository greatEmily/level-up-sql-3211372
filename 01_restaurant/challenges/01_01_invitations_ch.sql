-- Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.

Select 
  FirstName, 
  LastName, 
  Email

FROM
  Customers

Order By LastName;