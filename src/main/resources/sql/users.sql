CREATE TABLE authorities(
  username varchar(40) NOT NULL PRIMARY KEY,
  authority varchar(40) NOT NULL
);
CREATE TABLE users(
  username varchar(40) NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL,
  password varchar(60) NOT NULL,
  enabled INT NOT NULL
);

INSERT INTO authorities(username, authority)VALUES('andy', 'ROLE_USER');
INSERT INTO authorities(username, authority)VALUES('root', 'ROLE_ADMIN');
INSERT INTO authorities(username, authority)VALUES('rootandy', 'ROLE_USER,ROLE_ADMIN');

INSERT INTO users(username, name, password, enabled)VALUES('andy', 'Andy', '$2a$10$F.aNLnrqrsGSm0rAJnjY1Ow3FIsj3i76FPtb0Qdzfq8Ap25S0AaOm', 1);
INSERT INTO users(username, name, password, enabled)VALUES('root', 'Root', '$2a$06$yA3KZ/jFeab3U2XD/XECR.NWW2dXJorebAIcWp6eBnOtIerUNjEMe', 1);
INSERT INTO users(username, name, password, enabled)VALUES('rootandy', 'Root', '$2a$06$yA3KZ/jFeab3U2XD/XECR.NWW2dXJorebAIcWp6eBnOtIerUNjEMe', 1);

