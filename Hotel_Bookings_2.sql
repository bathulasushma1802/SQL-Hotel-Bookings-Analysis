# QUES 4: Total number of bookings that were canceled?
SELECT 
    COUNT(booking_id) AS Canceled_bookings
FROM
    bookings
WHERE
    is_canceled = 1; 
    
# QUES 5: What are the different deposit types used?
SELECT DISTINCT
    deposit_type
FROM
    payments
    