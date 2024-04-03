-- Insert into PROMOTION
INSERT INTO PROMOTION (name, discount, start, end)
VALUES
('Summer Sale', 20, '2023-06-01 00:00:00', '2023-06-30 23:59:59'),
('Winter Special', 25, '2023-12-01 00:00:00', '2023-12-31 23:59:59');

-- Insert into CUSTOMER
INSERT INTO CUSTOMER (name, dob, address, gender)
VALUES
('John Doe', '1990-01-01', '123 Main St, Anytown, USA', 'M'),
('Jane Smith', '1985-05-15', '456 Elm St, Anycity, USA', 'F');

-- Insert into CINEMA
INSERT INTO CINEMA (address)
VALUES
('789 Cinema Rd, Movietown, USA'),
('1011 Theater Ave, Filmcity, USA');

-- Insert into HALL
INSERT INTO HALL (size, cinemaId)
VALUES
(150, 1),
(200, 2);

-- Insert into MOVIE
INSERT INTO MOVIE (title, country, language, cost, releaseDate, genre)
VALUES
('Epic Adventure', 'USA', 'English', 5000000, '2023-07-15 00:00:00', 'Action'),
('Romantic Comedy', 'USA', 'English', 3000000, '2023-08-01 00:00:00', 'Comedy');

-- Insert into ARTIST
INSERT INTO ARTIST (name, dob, gender)
VALUES
('Actor One', '1970-02-02', 'M'),
('Director One', '1965-03-03', 'M');

-- Insert into CAST
INSERT INTO CAST (movieId, artistId, isDirector)
VALUES
(1, 1, 0),
(1, 2, 1);

-- Insert into SESSION
INSERT INTO SESSION (dateTime, movieId, hallId)
VALUES
('2023-07-15 20:00:00', 1, 1),
('2023-08-01 20:00:00', 2, 2);

-- Insert into TICKET_TRANSACTION
INSERT INTO TICKET_TRANSACTION (dateTime, totalPrice, payMethod, customerId, promotionId, os, browser, locationId)
VALUES
('2023-07-15 19:00:00', 30, 'Credit Card', 1, 1, 'Windows', 'Chrome', 1),
('2023-08-01 19:00:00', 25, 'Cash', 2, 2, NULL, NULL, 2);

-- Insert into TICKET
INSERT INTO TICKET (price, row, seat, transactionId, sessionId)
VALUES
(15, 5, 8, 1, 1),
(10, 4, 10, 2, 2);
