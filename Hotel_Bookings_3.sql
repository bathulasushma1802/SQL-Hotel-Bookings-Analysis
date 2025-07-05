# QUES 6: Find the average lead time of each hotel type.
SELECT 
h.hotel, ROUND(AVG(b.lead_time),2) AS Average_lead_time
FROM
    bookings b
        JOIN
    hotels h ON h.booking_id = b.booking_id
group by h.hotel;

#QUES 7: How many bookings included children or babies?
SELECT COUNT(*) AS Bookings
FROM stays
WHERE children > 0 OR babies > 0;

