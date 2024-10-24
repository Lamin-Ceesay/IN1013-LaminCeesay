CREATE TABLE petPet (
    petname VARCHAR(30),
    owner VARCHAR(30),
    species VARCHAR(20),
    gender CHAR(1),
    birth INTEGER(6),
    death INTEGER(6),
    PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
    petname VARCHAR(30),
    eventdate INTEGER(6),
    eventtype VARCHAR(50),
    remark VARCHAR(250),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (petname, eventdate)
);