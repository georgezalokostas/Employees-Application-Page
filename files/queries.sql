CREATE DATABASE posts;

CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  password varchar(50) NOT NULL,
  usertype varchar(10) NOT NULL DEFAULT 'user',
  PRIMARY KEY (id)
);

INSERT INTO users
(id, firstname, lastname, email, password, usertype) 
VALUES 
(NULL, 'George', 'Zalokostas', 'gzalos6@gmail.com', 'admin', 'admin');

CREATE TABLE applications (
  id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(50) NOT NULL,
  datesubmitted date NOT NULL,
  vacationstart date NOT NULL,
  vacationend date NOT NULL,
  reason text NOT NULL,
  status varchar(15) NOT NULL DEFAULT 'pending',
  uniqid longtext NOT NULL,
  PRIMARY KEY (id)
);
