--MOVIES TABLE
INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) VALUES (1, 'Zootopia(2016)', '4-MAR-2016', 108, 3, 'PG', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.', 'lvEzTjuM81A', 'zootopia.jpg' );
INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) VALUES (2, 'Captain America: Civil War', '6-MAY-2016', 147, 1, 'PG-13', Q'"Political interference in the Avengers' activities causes a rift between former allies Captain America and Iron Man."', 'QGfhS1hfTWw', 'Captain America_Civil War.jpg' );
INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) VALUES (3, 'The Conjuring 2', '10-JUN-2016', 144, 10, 'R', 'Lorraine and Ed Warren travel to north London to help a single mother raising four children alone in a house plagued by a malicious spirit.', 'HSaynNIu5vA', 'The conjuring2.jpg' );
INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) VALUES (4, 'Independence Day: Resurgence', '24-JUN-2016', 120, 1, 'PG-13', Q'"Two decades after the first Independence Day invasion, Earth is faced with a new extra-Solar threat. But will mankind's new space defenses be enough?"', 'NCe_JshWOZ0', 'Independence Day_R.jpg' );
INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) VALUES (5, 'Bad Moms', '29-JUL-2016', 101, 2, 'R', 'When three overworked and under-appreciated moms are pushed beyond their limits, they ditch their conventional responsibilities for a jolt of long overdue freedom, fun, and comedic self-indulgence.', 'IHBLbGvwO6I', 'Bad Moms.jpg' );

INSERT INTO MOVIES (movieId, movieName, releaseDate, duration, genre, maturity, summary, trailer, image) 
VALUES (6, 'The Godfather', '24-MAR-72', 175, 2, 'R', 'The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.', 'sY1S34973zA', 'god_father.jpg' );

--CINEMA_HALLS
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(1, 150, 75, 75, 3);
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(2, 180, 90, 90, 2);
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(3, 150, 75, 75, 2);
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(4, 160, 80, 80, 1);
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(5, 190, 95, 95, 1);
INSERT INTO CINEMA_HALLS (hallNo, capacity, upper_seats, lower_seats, category) VALUES(6, 10, 7, 3, 1);

--CUSTOMERS
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (1, 'Shuvo', 'shuvo@gmail.com', '01700111111');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (2, 'Arif', 'arif@gmail.com', '01700111112');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (3, 'Iqbal', 'iqbal@gmail.com', '01700111113');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (4, 'Shadhin', 'shadhin@gmail.com', '01700111114');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (5, 'Rasel', 'rasel@gmail.com', '01700111115');

TRUNCATE TABLE CUSTOMERS;
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'Arifuzzaman', 'auzchowdhury@gmail.com', '01557446802');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'ShuvoJit', 'ShuvoJit@gmail.com', '0175444117');
INSERT INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'IqbalRocky', 'IqbalRocky@gmail.com', '01254154544');

--|| Did not work ||--
INSERT ALL
   INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'Arifuzzaman', 'auzchowdhury@gmail.com', '01557446802')
   INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'ShuvoJit', 'ShuvoJit@gmail.com', '0175444117')
   INTO CUSTOMERS (customerId, name, emailId, phone) VALUES (SEQ_CUSTOMERS_ID.NEXTVAL, 'IqbalRocky', 'IqbalRocky@gmail.com', '01254154544')
SELECT 1 FROM DUAL;

--MOVIES_IN_THEATER
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (1, '21-JUL-2016', 1);
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (2, '24-JUL-2016', 1);
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (3, '27-JUL-2016', 1);
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (4, '2-AUG-2016', 0);
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (5, '10-AUG-2016', 0);
INSERT INTO MOVIES_IN_THEATER(movieId, premereDate, now_playing) VALUES (6, '24-MAR-72', 0);


--NOW_SHOWING_MOVIES
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (1, 3);
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (2, 2);
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (3, 2);
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (3, 3);
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (6, 2);
INSERT INTO NOW_SHOWING_MOVIES(movieId, format) VALUES (6, 3);

--SHOW_TIMES
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('30-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 3, 1, 3);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('30-JUL-2016 14:30:00', 'DD-MON-YYYY HH24:MI:SS'), 2, 2, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('30-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('30-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 4, 2, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 2, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 1, 3);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 2, 2, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 14:30:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 2, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 14:30:00', 'DD-MON-YYYY HH24:MI:SS'), 2, 1, 3);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 3, 3, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) VALUES (TO_DATE('31-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 3, 2);

INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 6, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 11:00:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 6, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 15:05:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 6, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 12:55:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 6, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 19:30:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 6, 2);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 19:30:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 6, 3);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('04-AUG-2016 11:10:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 6, 3);
INSERT INTO SHOW_TIMES (showDateTime, hallNo, movieId, format) 
  VALUES (TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 6, 3);


--TICKET_PRICES
INSERT INTO TICKET_PRICES (category, format, price) VALUES (1, 2, 250.00);
INSERT INTO TICKET_PRICES (category, format, price) VALUES (1, 3, 300.00);
INSERT INTO TICKET_PRICES (category, format, price) VALUES (2, 2, 350.00);
INSERT INTO TICKET_PRICES (category, format, price) VALUES (2, 3, 400.00);
INSERT INTO TICKET_PRICES (category, format, price) VALUES (3, 2, 450.00);
INSERT INTO TICKET_PRICES (category, format, price) VALUES (3, 3, 500.00);


--PURCHASE_TICKETS
INSERT INTO PURCHASE_TICKETS (purchaseId, customerId, showDateTime, hallNo, category, format, totalTickets, totalCost, purchaseDate) 
VALUES (1, 1, TO_DATE('30-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3, 2, 1, 450.00,"TO_DATE"('29-JUL-2016', 'DD-MON-YYYY'));

INSERT INTO PURCHASE_TICKETS (purchaseId, customerId, showDateTime, hallNo, category, format, totalTickets, totalCost, purchaseDate) 
VALUES (2, 3, TO_DATE('30-JUL-2016 14:30:00', 'DD-MON-YYYY HH24:MI:SS'), 2, 2, 2, 2, 800.00,"TO_DATE"('28-JUL-2016', 'DD-MON-YYYY'));

INSERT INTO PURCHASE_TICKETS (purchaseId, customerId, showDateTime, hallNo, category, format, totalTickets, totalCost, purchaseDate) 
VALUES (3, 2, TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3, 3, 1, 500.00,"TO_DATE"('30-JUL-2016', 'DD-MON-YYYY'));


INSERT INTO PURCHASE_TICKETS (purchaseId, customerId, showDateTime, hallNo, category, format, totalTickets, totalCost, purchaseDate) 
VALUES (4, 4, TO_DATE('31-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 1, 2, 3, 750.00,"TO_DATE"('30-JUL-2016', 'DD-MON-YYYY'));



--BOOKED_SEATS
alter table 
   BOOKED_SEATS
modify 
( 
   seatNo    varchar2(30)
);

INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA20', TO_DATE('30-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 1 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LC40', TO_DATE('30-JUL-2016 14:30:00', 'DD-MON-YYYY HH24:MI:SS'), 2, 2 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LB34', TO_DATE('31-JUL-2016 17:00:00', 'DD-MON-YYYY HH24:MI:SS'), 5, 4 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UB24', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UD25', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UE15', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA10', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UB07', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LC55', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LE32', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UD23', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 1, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA01', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA02', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA03', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UA04', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UB01', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UB02', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('UC01', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LA01', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LA02', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
INSERT INTO BOOKED_SEATS (seatNo, showDateTime, hallNo, purchaseId) VALUES ('LB01', TO_DATE('31-JUL-2016 11:40:00', 'DD-MON-YYYY HH24:MI:SS'), 6, 3 );
