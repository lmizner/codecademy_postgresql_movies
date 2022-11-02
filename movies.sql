CREATE TABLE films (
  name TEXT,
  release_year INTEGER
);

INSERT INTO films (name, release_year)
VALUES ('Shang-Chi and the Legend of the Ten Rings', 2021);

INSERT INTO films (name, release_year)
VALUES ('How to Be Single', 2016);

INSERT INTO films (name, release_year)
VALUES ('You''ve Got Mail', 1998);

SELECT * FROM films WHERE release_year = 1999;

ALTER TABLE films ADD COLUMN runtime INTEGER;
ALTER TABLE films ADD COLUMN genre TEXT;
ALTER TABLE films ADD COLUMN rating REAL;

UPDATE films
SET runtime = 132,
		genre = 'action',
    rating = 7.4
WHERE name = 'Shang-Chi and the Legend of the Ten Rings';

UPDATE films
SET runtime = 110,
		genre = 'comedy',
    rating = 6.0
WHERE name = 'How to Be Single';

UPDATE films
SET runtime = 119,
		genre = 'romance',
    rating = 6.7
WHERE name = 'You''ve Got Mail';

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);