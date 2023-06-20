-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

Select *

FROM Customers

Where 
email = 'atapley2j@kinetecoinc.com';

INSERT INTO AnniversaryAttendees (CustomerID, PartySize)
VALUES (SELECT CustomerID FROM Customers Where email = 'atapley2j@kinetecoinc.com'),3);

Update AnniversaryAttendees
SET PartySize = 4
Where (SELECT CustomerID FROM Customers Where email = 'atapley2j@kinetecoinc.com');

Select * from AnniversaryAttendees;