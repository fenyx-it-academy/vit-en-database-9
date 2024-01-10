CREATE TABLE Team (
	team_id integer,
	team_name integer,
	team_lead integer,
	creation_date integer
);

CREATE TABLE Team_member (
	member_id integer,
	team_id integer,
	Member_name text,
	responsibility_title text
);

CREATE TABLE Product (
	product_id integer,
	product_name text,
	customer_id integer,
	team_id integer
);

CREATE TABLE Customer (
	customer_id integer,
	customer_name text,
	dimain_id integer
);

CREATE TABLE Domain (
	Domain_id integer,
	domain_name text
);






