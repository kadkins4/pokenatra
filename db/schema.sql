DROP TABLE IF EXISTS pokes;

CREATE TABLE pokes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  poke_type VARCHAR(255),
  cp INT,
  img_url VARCHAR(255)
)
