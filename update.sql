-- Find all customers with fax numbers and set those numbers to null.

UPDATE customer
SET fax = null
Where fax is not Null;

-- Find all customers with no company (null) and set their company to “Self”.
UPDATE customer
SET company = 'Self'
Where company is Null;


-- Find the customer Julia Barnett and change her last name to Thompson.
UPDATE customer
SET last_name = 'Thompson'
Where last_name = 'Barnett' and first_name = 'Julia';

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer
SET support_rep_id = 4
Where email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
UPDATE tracks
SET composer = 'The darkness around us'
WHERE genre_id = (
  SELECT genre_id
  FROM genre
  WHERE name = 'Metal'
  and composer is NULL
);


-- Refresh your page to remove all database changes.