#QUES 8: What is the total number of special requests for each customer type?
SELECT 
    g.customer_type,
    SUM(p.total_of_special_requests) AS Special_requests
FROM
    payments p
        JOIN
    bookings b ON b.booking_id = p.booking_id
        JOIN
    guests g ON g.guest_id = b.guest_id
GROUP BY g.customer_type;

# QUES 9: Find the number of bookings with ADR greater than 150.
SELECT 
    COUNT(*) AS Bookings
FROM
    payments
WHERE
    adr > 150;