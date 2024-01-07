CREATE TABLE accounts (
	account_id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);

CREATE TABLE finance_groups(
    finance_group_id serial PRIMARY KEY,
    name VARCHAR (50) NOT NULL
);

CREATE TABLE accounts_finance_groups
(
    account_id int NOT NULL,
    finance_group_id int NOT NULL,
    FOREIGN KEY (account_id)
      REFERENCES accounts (account_id),
    FOREIGN KEY (finance_group_id)
      REFERENCES finance_groups (finance_group_id)
);

CREATE TABLE categories (
    category_id serial PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR
);

CREATE TABLE subcategories (
    subcategory_id serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR,
    category_id int NOT NULL,
    FOREIGN KEY (category_id)
          REFERENCES categories (category_id)
);

CREATE TABLE expenses(
    expense_id serial PRIMARY KEY,
    expense_time TIMESTAMP NOT NULL,
    cost int NOT NULL,
    subcategory_id int NOT NULL,
    finance_group_id int NOT NULL,
    FOREIGN KEY (subcategory_id)
      REFERENCES subcategories (subcategory_id),
    FOREIGN KEY (finance_group_id)
      REFERENCES finance_groups (finance_group_id)
);
