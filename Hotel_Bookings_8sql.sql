# QUES 15: What is the Total and Average Stay Duration per Customer Type?
WITH stay_duration AS (
SELECT b.booking_id,g.customer_type,
(s.stays_in_weekend_nights + s.stays_in_week_nights) 
AS total_nights FROM bookings b
JOIN stays s ON b.booking_id = s.booking_id
JOIN guests g ON b.guest_id = g.guest_id
WHERE b.is_canceled = 0
)
SELECT 
    customer_type,
    COUNT(*) AS total_bookings,
    SUM(total_nights) AS total_nights_stayed,
    ROUND(AVG(total_nights), 2) AS avg_stay_duration
FROM stay_duration
GROUP BY customer_type
ORDER BY total_nights_stayed DESC;
