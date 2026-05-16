CREATE TABLE greetings (
    id SERIAL,
    lang varchar(255) NOT NULL,
    text varchar(255) NOT NULL,
    PRIMARY KEY (id)
);