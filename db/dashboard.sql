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
  description VARCHAR(255),
  merchant_id INT8 references merchants(id) ON DELETE CASCADE,
  tag_id INT8 references tags(id) ON DELETE CASCADE,
  amount decimal,
  transaction_date DATE
);
