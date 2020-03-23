CREATE TABLE players (
  id integer UNIQUE NOT NULL,
  last_name text NOT NULL,
  first_name text NOT NULL,
  position varchar(3),
  jersey_number integer,
  weight_lb integer NOT NULL,
  height_in integer NOT NULL,
  date_of_birth date NOT NULL
);

INSERT INTO players VALUES (
  1,
  'Fisher', 'Derek', 'QB',
  2, 210, 74, '1999-01-02'
);

INSERT INTO Players VALUES (
  2,
  'Cunningham', 'Reginald', 'DE',
  55, 240, 75, '1998-04-03'
);

INSERT INTO players VALUES (
  3,
  'Jackson', 'Stephen', 'WR',
  13, 184, 76, '1998-10-13'
);

INSERT INTO players VALUES (
  4,
  'Colton', 'Ryan', 'K',
  2, 210, 74, '1999-01-02'
);

INSERT INTO players VALUES (
  5,
  'Wright', 'Alexander', 'RB',
  23, 190, 70, '1999-03-13'
);

INSERT INTO Players VALUES (
  6,
  'Smalls', 'Elliot', 'OBL',
  33, 215, 69, '1999-02-23'
);

ALTER TABLE players ADD CONSTRAINT position NOT NULL;
ALTER TABLE players ADD CONSTRAINT jersey_number NOT NULL;

ALTER TABLE players ADD CONSTRAINT jersey_number UNIQUE;

AlTER TABLE players ADD CHECK (jersey_number > 0 AND jersey_number < 100);

ALTER TABLE players ALTER COLUMN position SET DEFAULT 'ATH';

INSERT INTO players VALUES (
  7,
  'Jamison', 'Zion', NULL,
  12, 285, 80, '2000-10-25'
);

INSERT INTO players VALUES (
  8,
  'Johnson', 'Craig', 'P',
  17, 173, 72, '1999-11-25'
);
