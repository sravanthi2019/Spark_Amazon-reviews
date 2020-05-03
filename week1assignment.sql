CREATE SCHEMA week1assignment;
USE week1assignment;
CREATE TABLE comapny_details
(
company VARCHAR(14) NOT NULL,
numemp INT NOT NULL,
category VARCHAR(14) NOT NULL,
city VARCHAR(14) NOT NULL,
state VARCHAR(10) NOT NULL,
PRIMARY KEY (company)
);

CREATE TABLE FUND_DETAILS
(
company VARCHAR(14) NOT NULL,
funid INT NOT NULL,
fundedDate DATE NOT NULL,
raisedAmt INT NOT NULL,
raisedCurrency VARCHAR(10) NOT NULL,
round VARCHAR(10) NOT NULL,
KEY         (company),
FOREIGN KEY (company) REFERENCES comapny_details (company) ON DELETE RESTRICT ON UPDATE CASCADE,
PRIMARY KEY (funid)
);