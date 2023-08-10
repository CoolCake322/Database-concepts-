create table sizeType(
	ID int(7) not null auto_increment,
	size varchar(20) not null,
	primary key (ID)
);

update product 
set size = '3 ounce'
where description = "tiramisu classico";

insert into sizeType (size)
select distinct substring_index(size, ' ', -1)
from product;

alter table product
add sizeTypeId int(7) not null;

update product
set sizeTypeId = '1'
where size like '%ounce%';

update product
set sizeTypeId = '2'
where size like '%pound%';

update product
set sizeTypeId = '3'
where size like '%count%';

alter table product
add foreign key (sizeTypeId) references sizeType(ID);

update product
set size = substring_index(size, ' ', 1);

alter table product
modify column size decimal(7,1) not null;

insert into product (productName, productType, description, size, sizeTypeId, quantity, price) values
("steak", 1, "Butcher's Cut Filet Mignon", 10, 1, 30, 33.74),
("steak", 1, "Butcher's Cut Top Sirloin", 5, 1, 50, 14.99),
("steak", 1, "T-Bone Steak", 18, 1, 40, 33.33),
("bison", 1, "Ground Bison", 1, 2, 20, 22.49),
("turkey", 1, "Home-Style Roasted Turkey Breast", 1.8, 2, 45, 21.99),
("turkey", 1, "Turkey Burgers", 8, 3, 30, 21.99),
("ham", 1, "Spiral Sliced Ham", 9, 2, 15, 89.99),
("pork", 1, "Breaded Pork Tenderloin", 4, 3, 25, 19.99),
("salmon", 2, "Lemon Dill Salmon Fillets", 6, 1, 20, 8.79),
("seabass", 2, "Chilean Sea Bass", 5, 1, 30, 19.99),
("crab", 2, "King Crab Legs", 2, 2, 16, 109.99),
("crab", 2, "Gourmet Crab Cakes", 4, 3, 26, 34.99),
("lobster", 2, "Cold Water Lobster Tails", 5, 1, 35, 22.99),
("bean", 3, "Green Beans", 6.5, 1, 45, 10.99),
("broccoli", 3, "Steakhouse Broccoli and Cauliflower Gratin", 22, 1, 35, 12.99),
("brussels sprouts", 3, "Brussels Sprouts with Bacon & Shallots", 9.5, 1, 35, 14.99),
("corn", 3, "Steakhouse Creamed Corn", 20, 1, 40, 10.99),
("mixed", 3, "Roasted Vegetable Medley", 7, 1, 50, 9.99),
("asparagus", 3, "Asparagus Spears With Hollandaise Sauce", 12, 1, 30, 15.99),
("potatoes", 3, "Potatoes au Gratin", 8, 3, 55, 14.99),
("risotto", 4, "Pepper Jack Risotto Cakes", 8, 3, 25, 19.99),
("rice", 4, "Harvest Rice Pilaf", 25, 1, 45, 14.99),
("bread", 5, "Mini Baguettes with Garlic Butter", 4, 3, 35, 49.99);