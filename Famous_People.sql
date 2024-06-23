/* Create table about the people and what they do here */
CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    genre TEXT,
    nationality TEXT);
    
INSERT INTO authors (fullname, genre, nationality) VALUES ("J.K. Rowling", "young adult fiction", "British");

INSERT INTO authors (fullname, genre, nationality) VALUES ("Agatha Christie", "detective fiction", "British");

INSERT INTO authors (fullname, genre, nationality) VALUES ("Stephen King", "supernatural fiction", "American");

INSERT INTO authors (fullname, genre, nationality) VALUES ("James Patterson", "young adult fiction", "American");

INSERT INTO authors (fullname, genre, nationality) VALUES ("George R.R. Martin", "science fiction", "American");

CREATE table wealth (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    authors_id INTEGER,
    net_worth TEXT,
    books_written TEXT);
    
INSERT INTO wealth (authors_id, net_worth, books_written) VALUES (1, "1 billion", "15");

INSERT INTO wealth (authors_id, net_worth, books_written) VALUES (2, "600 million", "66");

INSERT INTO wealth (authors_id, net_worth, books_written) VALUES (1, "500 million", "60");

INSERT INTO wealth (authors_id, net_worth, books_written) VALUES (1, "800 million", "200");

INSERT INTO wealth (authors_id, net_worth, books_written) VALUES (1, "120 million", "20");




/*Return total net worth for each author*/
SELECT authors.fullname, wealth.net_worth
FROM authors
JOIN wealth
ON authors.id = wealth.authors_id;
