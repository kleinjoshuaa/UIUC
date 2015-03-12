/* Use the serializable transaction isolation level. */
set transaction isolation level serializable;

/* Select all rows from your ATunesCustomers table. */
select * from ATunesCustomers;

/* Begin a transaction */
START TRANSACTION;

/* Pick one row in your table and delete it. */
DELETE FROM ATunesCustomers WHERE CustomerID = 1;


/* Pick a different row in your table and change some aspect of the row. */
UPDATE ATunesCustomers SET LastName = 'Right' WHERE CustomerID = 5;


/* Select all rows from your ATunesCustomers table. */
select * from ATunesCustomers;

/* Rollback your transaction. */
ROLLBACK;

/* Select all rows from your ATunesCustomers table. */
select * from ATunesCustomers;