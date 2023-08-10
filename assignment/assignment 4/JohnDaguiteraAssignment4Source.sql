create table productType(
	ID int(7) NOT NULL AUTO_INCREMENT,
	type varchar(90) NOT NULL,
	primary key (ID)
);

create table cityState(
	city varchar(90) NOT NULL,
	state char(2) NOT NULL,
	zipCode char(5) NOt NULL UNIQUE,
	primary key (zipCode)
);

insert into productType(type)
	select distinct productType
	from product;
);

insert into cityState(city, state, zipCode)
	select distinct city, state, zipCode
	from employee;
);

insert into cityState(city, state, zipCode)
	select distinct city, state, zipCode
	from customer;
);

insert into cityState(city, state, zipCode)
	select distinct city, state, zipCode
	from supplier;
);

update product
set productType = 1
where productType = 'meat'; 

update product
set productType = 2
where productType = 'seafood'; 

update product
set productType = 3
where productType = 'vegetable'; 

update product
set productType = 4
where productType = 'grain and rice'; 

update product
set productType = 5
where productType = 'bakery'; 

alter table product
modify column productType int not null;

alter table product
add foreign key (productType) references productType(ID);

alter table customer
add foreign key (zipCode) references cityState(zipCode);

alter table customer
DROP COLUMN city;

alter table customer
DROP COLUMN state;

alter table employee
add foreign key (zipCode) references cityState(zipCode);

alter table supplier
add foreign key (zipCode) references cityState(zipCode);

alter table employee
DROP COLUMN city;

alter table employee
DROP COLUMN state;

alter table supplier
DROP COLUMN city;

alter table supplier
DROP COLUMN state;