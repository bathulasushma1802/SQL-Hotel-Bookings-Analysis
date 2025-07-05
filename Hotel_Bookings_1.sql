# QUES 1: Total number of bookings are there in the dataset?
SELECT 
    COUNT(booking_id) AS Total_bookings
FROM
    bookings;

# QUES 2: What are the different hotel types?
SELECT DISTINCT
    hotel AS Hotels
FROM
    hotels;

#QUES 3: List the top 5 countries by number of guests.
SELECT 
    country, COUNT(guest_id) AS No_of_guests
FROM
    guests
GROUP BY country
ORDER BY no_of_guests DESC
LIMIT 5;
