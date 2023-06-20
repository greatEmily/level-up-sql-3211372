-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
  FirstName,
  LastName,
  ReservationID,
  Customers.CustomerID,
  PartySize,
  Date

FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID

WHERE
  LastName LIKE 'St%'
  AND
  Date LIKE '%06-14%'
  AND
  PartySize = 4;