/*  This file contains the source code to verify the result sets are correct in table employeeSupplier     and table productSupplier

	1. The concat() is a SQL function that performs concatentation to merge multiple columns together
	2. The AS creates an alias that allows for the column header to be more informative
	3. The letters following the table names are aliases to simplify the source code in place of typing the entire table name
	4. The WHERE/AND clauses join multiple tables together based on the primary and foreign keys used in the table data
*/

/* Test case 2 source code  */

SELECT concat(e.firstName, " ", e.lastName) AS employee, s.supplierName AS supplier 
  FROM employee e, supplier s, employeeSupplier es
 WHERE es.employeeId = e.id 
   AND es.supplierId = s.id;
   
/* Test case 3 source code */

SELECT p.description AS description, s.supplierName AS supplier
  FROM product p, supplier s, productSupplier ps
 WHERE ps.productId = p.ID
   AND ps.supplierId = s.ID;