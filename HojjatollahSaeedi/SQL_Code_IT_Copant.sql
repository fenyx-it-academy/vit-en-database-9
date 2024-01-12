CREATE TABLE `Staffs` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`fname` varchar NOT NULL,
	`lname` varchar NOT NULL,
	`birth_date` DATE NOT NULL,
	`Address` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Job-Positions` (
	`Id` INT NOT NULL AUTO_INCREMENT,
	`position` varchar NOT NULL UNIQUE,
	`position-name` varchar NOT NULL,
	PRIMARY KEY (`Id`,`position`)
);

CREATE TABLE `Customers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`f_lname` INT NOT NULL,
	`service_area` varchar NOT NULL,
	`Telephone` INT NOT NULL,
	`Address` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Orders` (
	`order_code` INT NOT NULL AUTO_INCREMENT,
	`customer_code` INT NOT NULL,
	`registration_date` DATE NOT NULL,
	`description` TEXT NOT NULL,
	PRIMARY KEY (`order_code`)
);

CREATE TABLE `TeamsWork` (
	`staff_id` INT NOT NULL,
	`position` varchar NOT NULL,
	`order_code` INT NOT NULL
);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk0` FOREIGN KEY (`customer_code`) REFERENCES `Customers`(`id`);

ALTER TABLE `TeamsWork` ADD CONSTRAINT `TeamsWork_fk0` FOREIGN KEY (`staff_id`) REFERENCES `Staffs`(`id`);

ALTER TABLE `TeamsWork` ADD CONSTRAINT `TeamsWork_fk1` FOREIGN KEY (`position`) REFERENCES `Job-Positions`(`position`);

ALTER TABLE `TeamsWork` ADD CONSTRAINT `TeamsWork_fk2` FOREIGN KEY (`order_code`) REFERENCES `Orders`(`order_code`);






