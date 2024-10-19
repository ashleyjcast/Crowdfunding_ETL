DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;


CREATE TABLE category (
	category_id VARCHAR(5) PRIMARY KEY,
	category VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER REFERENCES contacts (contact_id) NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,
	category_id VARCHAR(5) REFERENCES category (category_id) NOT NULL,
	subcategory_id VARCHAR(10) REFERENCES subcategory (subcategory_id) NOT NULL
	);

