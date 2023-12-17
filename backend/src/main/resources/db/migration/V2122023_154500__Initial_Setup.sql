CREATE TABLE accounts (
	accounts_id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);


CREATE TABLE categories (
    categories_id serial PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR
);


CREATE TABLE subcategories (
    subcategories_id serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR,
    categories_id int NOT NULL,
    FOREIGN KEY (categories_id)
          REFERENCES categories (categories_id)
);


CREATE TABLE expense(
    expense_id serial PRIMARY KEY,
    expense_time TIMESTAMP NOT NULL,
    cost int NOT NULL,
    subcategories_id int NOT NULL,
    accounts_id int NOT NULL,
    FOREIGN KEY (subcategories_id)
      REFERENCES subcategories (subcategories_id),
    FOREIGN KEY (accounts_id)
      REFERENCES accounts (accounts_id)
);
