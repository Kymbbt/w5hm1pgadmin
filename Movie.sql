CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  phone VARCHAR(30),
  address VARCHAR(100)
)

CREATE TABLE concession (
  concession_id SERIAL PRIMARY KEY ,
  ticket_id INTEGER,
  movie_id INTEGER
);

CREATE TABLE Movie (
  movie_id SERIAL,
  price NUMERIC(6,2),
  description VARCHAR(200),
  ganre VARCHAR(50),
  name_of_movie VARCHAR(100),
  room_location VARCHAR(100),
  capacity NUMERIC(10,5),
  ticket_id VARCHAR(50),
  PRIMARY KEY (movie_id),
  FOREIGN KEY (price) REFERENCES Movie(price)
);



CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  ticket_date DATE,
  quantity NUMERIC,

  FOREIGN KEY (ticket_date) REFERENCES concession(concession_id),

  FOREIGN KEY (ticket_id) REFERENCES Movie(description)
);

CREATE TABLE payment (
  payment_id SERIAL PRIMARY KEY,
   
  full_name VARCHAR(100),
  card_number VARCHAR(50),
  payment_medhod VARCHAR(50),
  cart_id VARCHAR(50)

);

CREATE TABLE Cart (
  cart_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  ticket_id VARCHAR (50),
  payment_id VARCHAR(100),
  FOREIGN KEY (cart_id) REFERENCES Customer(email),
  FOREIGN KEY (ticket_id)  REFERENCES payment(full_name),
  FOREIGN KEY (ticket_id) REFERENCES Ttckets(ticket_date)
);
