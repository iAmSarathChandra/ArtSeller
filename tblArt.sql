CREATE TABLE tblArtProduct (
    Id SERIAL PRIMARY KEY,
    artist_id INT NOT NULL,
    art_category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    product_info TEXT NOT NULL,
    CONSTRAINT fk_artist
        FOREIGN KEY (artist_id)
        REFERENCES tblArtist(Id)
);