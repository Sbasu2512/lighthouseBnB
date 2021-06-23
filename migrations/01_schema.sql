-- DROP TABLE users IF EXISTS;
CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL 
);

-- DROP TABLE properties IF EXISTS; 
CREATE properties(
id INTEGER PRIMARY KEY NOT NULL,
owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
title VARCHAR(255),
description TEXT,
thumbnail_photo_url VARCHAR(255),
cover_photo_url VARCHAR(255),
cost_per_night INTEGER,
parking_spaces INTEGER,
number_of_bathrooms INTEGER,
number_of_bedrooms INTEGER,
country VARCHAR(255),
street VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
post_code VARCHAR(255),
active BOOLEAN
);


-- DROP TABLE property_reviews;
CREATE TABLE property_reviews (
id INTEGER PRIMARY KEY NOT NULL,
guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
reservation_id INTEGER NOT NULL REFERENCES reservation(id) ON DELETE CASCADE,
rating SMALLINT,
message TEXT
);

-- DROP TABLE reservation;
CREATE TABLE reservation(
  id INTEGER PRIMARY KEY NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);