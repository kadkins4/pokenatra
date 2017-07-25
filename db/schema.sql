DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  poke_type VARCHAR(255),
  cp INT,
  img_url VARCHAR(255)
)
