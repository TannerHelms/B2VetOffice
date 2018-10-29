CREATE TABLE animal(
    IDanimal INT(11) NOT NULL AUTO_INCREMENT,
    species VARCHAR(50) NOT NULL,
    NAME VARCHAR(50) DEFAULT NULL,
    gender CHAR(1) NOT NULL,
    yearBorn YEAR(4) DEFAULT NULL,
    entrant VARCHAR(50) NOT NULL,
    IDcustomer INT(11) DEFAULT NULL,
    PRIMARY KEY (IDanimal),
    KEY ID(IDcustomer),
    CONSTRAINT animal_ibfk_1 FOREIGN KEY(IDcustomer) REFERENCES customer(IDcustomer)
) ENGINE = InnoDB DEFAULT CHARSET = latin1
