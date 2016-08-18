CREATE TABLE authorities(
  username varchar(40) NOT NULL PRIMARY KEY,
  authority varchar(40) NOT NULL
);
CREATE TABLE users(
  username varchar(40) NOT NULL PRIMARY KEY,
  password varchar(60) NOT NULL,
  enabled INT NOT NULL
);

INSERT INTO authorities(username, authority)VALUES('andy', 'ROLE_USER');
INSERT INTO authorities(username, authority)VALUES('root', 'ROLE_ADMIN');

INSERT INTO users(username, password, enabled)VALUES('andy', '$2a$10$F.aNLnrqrsGSm0rAJnjY1Ow3FIsj3i76FPtb0Qdzfq8Ap25S0AaOm', 1);
INSERT INTO users(username, password, enabled)VALUES('root', '$2a$06$yA3KZ/jFeab3U2XD/XECR.NWW2dXJorebAIcWp6eBnOtIerUNjEMe', 1);

