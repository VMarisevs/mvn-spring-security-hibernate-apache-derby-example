CREATE TABLE authorities(
  username varchar(40) NOT NULL PRIMARY KEY,
  authority varchar(40) NOT NULL
);
CREATE TABLE users(
  username varchar(40) NOT NULL PRIMARY KEY,
  password varchar(40) NOT NULL,
  enabled INT NOT NULL
);

INSERT INTO authorities(username, authority)VALUES('andy', 'ROLE_USER');
INSERT INTO authorities(username, authority)VALUES('root', 'ROLE_ADMIN');

INSERT INTO users(username, password, enabled)VALUES('andy', '1234', 1);
INSERT INTO users(username, password, enabled)VALUES('root', 'root', 1);

