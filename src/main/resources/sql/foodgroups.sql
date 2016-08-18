-- CREATE TABLE foodgroups(
--   id INT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
--   name varchar(45) DEFAULT NULL,
--   description varchar(100) DEFAULT NULL
-- );

INSERT INTO foodgroups(name, description) VALUES('Fruits', 'Hi I am a fruit');
INSERT INTO foodgroups(name, description) VALUES('Vegetable', 'Hi I am a vegtable');
INSERT INTO foodgroups(name, description) VALUES('Grains', 'Hi I am a grain');
INSERT INTO foodgroups(name, description) VALUES('Meats', 'Hi I am a meat');
INSERT INTO foodgroups(name, description) VALUES('Dairy', 'Hi I am a dairy');