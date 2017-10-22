DROP TABLE transactions;
DROP TABLE merchants;
DROP TABLE tags;

CREATE TABLE tags
(
  id SERIAL8 primary key,
  type VARCHAR(255) not null
);

CREATE TABLE merchants
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE transactions
(
  id SERIAL8 primary key,
  merchant_id INT8 references merchants(id),
  tag_id INT8 references tags(id),
  amount INT8,
  transaction_date DATE
);
