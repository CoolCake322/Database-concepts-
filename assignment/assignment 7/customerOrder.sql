/*
   data file in order of customerId, productId, quantity, orderDate, orderStateID
   
   Column Customer should be mapped to the customer table
   Column Product should be mapped to the product table
   Column Order Status should be mapped to table orderState
   
   Use Date function DATE(NOW()) to obtain the current date
   
   a correct insert statement would be similar to (2, 3, 5, DATE(NOW()), 3)

+------------------+---------------------------------------+----------+--------------+--------------+
| Customer         | Product                               | Quantity | Date Ordered | Order Status |
+------------------+---------------------------------------+----------+--------------+--------------+
| Bradlee Esparza  | chocolate croissant                   |        2 | 2021-03-12   | New order    |
| Bradlee Esparza  | tiramisu classico                     |        4 | 2021-03-12   | New order    |
| Michelle Ramirez | broccoli florets                      |        6 | 2021-03-12   | New order    |
| Michelle Ramirez | organic quinoa                        |        4 | 2021-03-12   | New order    |
| Nico Prince      | Ground Bison                          |        4 | 2021-03-12   | New order    |
| Nico Prince      | Green Beans                           |       10 | 2021-03-12   | New order    |
| Jordana Beck     | lamb shank in rosemary and mint sauce |        4 | 2021-03-12   | New order    |
| Dane Kaiser      | coquina clams                         |        6 | 2021-03-12   | New order    |
| Grover Squires   | Potatoes au Gratin                    |        3 | 2021-03-12   | New order    |
| Javan Rennie     | red shrimp from argentina XL          |        8 | 2021-03-12   | New order    |
+------------------+---------------------------------------+----------+--------------+--------------+

*/

insert into customerOrder values
(1 ,22, 23, 2, DATE(NOW()), 1),
(2 ,22, 24, 4, DATE(NOW()), 1),
(3 ,33, 14, 6, DATE(NOW()), 1),
(4 ,33, 20, 4, DATE(NOW()), 1),
(5 ,11, 64, 4, DATE(NOW()), 1),
(6 ,11, 74, 10, DATE(NOW()), 1),
(7 ,35, 1, 4, DATE(NOW()), 1),
(8 ,15, 10, 6, DATE(NOW()), 1),
(9 ,25, 80, 3, DATE(NOW()), 1),
(10 ,12, 9, 8, DATE(NOW()), 1);
