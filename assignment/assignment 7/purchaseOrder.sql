/*
   data file in order of supplierId, productId, quantity, orderDate, orderStateID
   
   Column Supplier should be mapped to the supplier table
   Column Product should be mapped to the product table
   Column Order Status should be mapped to table orderState
   
   Use Date function DATE(NOW()) to obtain the current date
   
   a correct insert statement would be similar to (2, 3, 5, DATE(NOW()), 3)
   
 +----------------------------------+---------------------------------------+----------+--------------+--------------+
| Supplier                         | Product                               | Quantity | Date Ordered | Order Status |
+----------------------------------+---------------------------------------+----------+--------------+--------------+
| New Direction Foods              | lamb shank in rosemary and mint sauce |       10 | 2021-03-12   | New order    |
| New Direction Foods              | veal osso buco                        |       15 | 2021-03-12   | New order    |
| Dutt and Wagner of Virginia, Inc | cooked small octopus tentacles        |       15 | 2021-03-12   | New order    |
| Ajinomoto Foods North America    | black beluga lentils                  |       12 | 2021-03-12   | New order    |
| Kellogg NA Company               | cappuccino pie                        |       20 | 2021-03-12   | New order    |
| Kellogg NA Company               | red berry cheesecake                  |       18 | 2021-03-12   | New order    |
| Monogram Foods                   | Ground Bison                          |       10 | 2021-03-12   | New order    |
| Dutt and Wagner of Virginia, Inc | Spiral Sliced Ham                     |       15 | 2021-03-12   | New order    |
| Culinary Specialties, Inc        | King Crab Legs                        |       14 | 2021-03-12   | New order    |
| John E. Koerner Company          | Lemon Dill Salmon Fillets             |       10 | 2021-03-12   | New order    |
+----------------------------------+---------------------------------------+----------+--------------+--------------+
ID, supplierId, productId, quantity, orderDate, orderStateID
*/

insert into purchaseOrder values
(1, 1, 1, 10, DATE(NOW()), 1),
(2, 1, 2, 15, DATE(NOW()), 1),
(3, 3, 8, 15, DATE(NOW()), 1),
(4, 7, 21, 12, DATE(NOW()), 1),
(5, 9, 26, 20, DATE(NOW()), 1),
(6, 9, 27, 18, DATE(NOW()), 1),
(7, 2, 64, 10, DATE(NOW()), 1),
(8, 3, 67, 15, DATE(NOW()), 1),
(9, 4, 71, 14, DATE(NOW()), 1),
(10, 5, 69, 10, DATE(NOW()), 1);
