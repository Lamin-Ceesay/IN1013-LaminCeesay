ON DELETE
FOREIGN KEY petname REFERENCES petPet(petname)
ON DELETE CASCADE; 

UPDATE pet_database.petevent t
SET t.remark = '5 kittens, 3 female, 2 male'
WHERE t.petname LIKE 'Fluffy' AND t.eventdate = 950515;

UPDATE pet_database.petevent t
SET t.petname = 'Claws'
WHERE t.petname LIKE 'Slim' AND t.eventdate = 970803;

INSERT INTO pet_database.petevent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', 201015, 'vet', 'antibiotics');

INSERT INTO pet_database.petevent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', 201015, 'vet', 'antibiotics');

DELETE
FROM pet_database.petevent
WHERE petname LIKE 'Buffy' AND eventdate = 930623;

DELETE
FROM pet_database.petevent
WHERE petname LIKE 'Buffy' AND eventdate = 940619;

UPDATE pet_database.petpet t
SET t.death = 200901
WHERE t.petname LIKE 'Puffball';

INSERT INTO pet_database.petpet (petname, owner, species, gender, birth, death)
VALUES ('Hammy', 'Diane', 'hamster', 'M', 101030, null);

DELETE
FROM pet_database.petpet
WHERE petname LIKE 'Buffy';

