-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *

FROM Reservations r
JOIN Customers c ON r.CustomerID = c.CustomerID

WHERE
FirstName = 'Norby'
AND
Date > '2022-07-24';

SELECT
CustomerID, 
ReservationID, 
Date

FROM
Reservations

WHERE
CustomerID = 64;

DELETE FROM Reservations
WHERE ReservationID = 2000;