/* 
1.  Data items in the following order: 
	productName, productType, description, size, sizeTypeId, quantity, price

2.  Replace <meat>, <seafood>, <vegetable>, <grain and rice> and <bakery> with the foreign key value in table productType, column type

3.  Replace <ounce>, <pound> and <count> with the foreign key value in table sizeType, column size
*/
insert into product (productName, productType, description, size, sizeTypeId, quantity, price) values
"steak", <meat>, "Butcher's Cut Filet Mignon", 10, <ounce>, 30, 33.74
"steak", <meat>, "Butcher's Cut Top Sirloin", 5, <ounce>, 50, 14.99
"steak", <meat>, "T-Bone Steak", 18, <ounce>, 40, 33.33
"bison", <meat>, "Ground Bison", <ounce>, <pound>, 20, 22.49
"turkey", <meat>, "Home-Style Roasted Turkey Breast", 1.8, <pound>, 45, 21.99
"turkey", <meat>, "Turkey Burgers", 8, <count>, 30, 21.99
"ham", <meat>, "Spiral Sliced Ham", 9, <pound>, 15, 89.99
"pork", <meat>, "Breaded Pork Tenderloin", 4, <count>, 25, 19.99
"salmon", <seafood>, "Lemon Dill Salmon Fillets", 6, <ounce>, 20, 8.79
"seabass", <seafood>, "Chilean Sea Bass", 5, <ounce>, 30, 19.99
"crab", <seafood>, "King Crab Legs", <pound>, 2, 16, 109.99
"crab", <seafood>, "Gourmet Crab Cakes", 4, <count>, 26, 34.99
"lobster", <seafood>, "Cold Water Lobster Tails", 5, <ounce>, 35, 22.99
"bean", <vegetable>, "Green Beans", 6.5, <ounce>, 45, 10.99
"broccoli", <vegetable>, "Steakhouse Broccoli and Cauliflower Gratin", 22, <ounce>, 35, 12.99
"brussels sprouts", <vegetable>, "Brussels Sprouts with Bacon & Shallots", 9.5, <ounce>, 35, 14.99
"corn", <vegetable>, "Steakhouse Creamed Corn", 20, <ounce>, 40, 10.99
"mixed", <vegetable>, "Roasted Vegetable Medley", 7, <ounce>, 50, 9.99
"asparagus", <vegetable>, "Asparagus Spears With Hollandaise Sauce", 12, <ounce>, 30, 15.99
"potatoes", <vegetable>, "Potatoes au Gratin", 8, <count>, 55, 14.99
"risotto", <grain and rice>, "Pepper Jack Risotto Cakes", 8, <count>, 25, 19.99
"rice", <grain and rice>, "Harvest Rice Pilaf", 25, <ounce>, 45, 14.99
"bread", <bakery>, "Mini Baguettes with Garlic Butter", 4, <count>, 35, 49.99