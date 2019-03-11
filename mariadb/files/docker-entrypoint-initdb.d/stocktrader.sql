CREATE TABLE Portfolio(owner VARCHAR(32) NOT NULL, total DOUBLE, loyalty VARCHAR(8), balance DOUBLE, commissions DOUBLE, free INTEGER, sentiment VARCHAR(16), PRIMARY KEY(owner));
CREATE TABLE Stock(owner VARCHAR(32) NOT NULL, symbol VARCHAR(8) NOT NULL, shares INTEGER, price DOUBLE, total DOUBLE, dateQuoted DATE, commission DOUBLE, FOREIGN KEY (owner) REFERENCES Portfolio(owner) ON DELETE CASCADE, PRIMARY KEY(owner, symbol));
INSERT INTO Portfolio VALUES('Client1', 0, 'Bronze', 2000.00, 0, 0,'Unknown');
INSERT INTO Stock VALUES ('Client1','AAPL',100,172.91,17291.0,'2019-03-08',7.99);
INSERT INTO Stock VALUES ('Client1','IBM',100,135.09,13509.00,'2019-03-08',7.99);
INSERT INTO Stock VALUES ('Client1','NKE',100,84.80,8480.00,'2019-03-08',7.99);
