-- used to store artist information.
CREATE TABLE tblArtist (
    Id SERIAL PRIMARY KEY,
    seller_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    mobile_Number VARCHAR(20) UNIQUE NOT NULL,
    state VARCHAR(100) NOT NULL,
    address TEXT NOT NULL,
    isActive BOOLEAN,
    registered_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE tblArtist
ADD COLUMN password VARCHAR(255) NOT NULL;