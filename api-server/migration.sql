DROP TABLE IF EXISTS parents, children CASCADE;

CREATE TABLE parents (
    id serial PRIMARY KEY,
    dad varchar,
    mom varchar
);

CREATE TABLE children (
    id serial PRIMARY KEY,
    name varchar,
    gender varchar,
    parents_id int,
    CONSTRAINT fk_parents_id
      FOREIGN KEY(parents_id) 
	  REFERENCES parents(id)
);


