create table orderState(
	ID int(7) not null AUTO_INCREMENT,
	state varchar(20) not null,
	primary key (ID)
);

create table customerOrder(
	ID int(7) not null AUTO_INCREMENT,
	customerId int(7) not null,
	productId int(7) not null,
	quantity int(7) not null,
	orderDate DATE not null,
	orderStateId int(7) not null,
	check (quantity > 0),
	primary key (ID),
	foreign key (customerId) references customer(ID),
	foreign key (productId) references product(ID),
	foreign key (orderStateId) references orderState(ID)
);

create table purchaseOrder(
	ID int(7) not null AUTO_INCREMENT,
	supplierId int(7) not null,
	productId int(7) not null,
	quantity int(7) not null,
	orderDate DATE not null,
	orderStateId int(7) not null,
	check (quantity > 0),
	primary key (ID),
	foreign key (supplierId) references supplier(ID),
	foreign key (productId) references product(ID),
	foreign key (orderStateId) references orderState(ID)
);

create table customerPayment(
	ID int(7) not null AUTO_INCREMENT,
	customerOrderId int(7) not null,
	total decimal(10,2) not null,
	check (total > 0.0),
	primary key (ID),
	foreign key (customerOrderId)references customerOrder(ID)
);

create table supplierTransaction(
	ID int(7) not null AUTO_INCREMENT,
	purchaseOrderId int(7) not null,
	total decimal(10,2) not null,
	check (total > 0.0),
	primary key (ID),
	foreign key (purchaseOrderId) references purchaseOrder(ID)
);

insert into orderState(state) values
("New order"),
("Buyer contacted"),
("Seller contacted"),
("Invoice sent"),
("Invoice received"),
("Payment pending"),
("Payment received"),
("Shipped"),
("Awaiting pickup"),
("Cancelled"),
("Backordered"),
("Completed");


	


