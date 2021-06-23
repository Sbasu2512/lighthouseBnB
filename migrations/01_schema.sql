DROP TABLE users ;

CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255) 
);

DROP TABLE property_reviews;

CREATE TABLE property_reviews (
id INTEGER PRIMARY KEY NOT NULL,
guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
reservation_id INTEGER NOT NULL REFERENCES reservation(id) ON DELETE CASCADE,
rating SMALLINT,
message TEXT
);
