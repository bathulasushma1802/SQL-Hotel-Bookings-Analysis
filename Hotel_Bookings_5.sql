#QUES 10: Calculate the cancellation rate by market segment.
SELECT 
    g.market_segment,
    AVG(b.is_canceled) * 100 AS cancellation_rate
FROM
    guests AS g
        JOIN
    bookings b ON b.guest_id = g.guest_id
GROUP BY g.market_segment;

#FQUES 11 : Find the top 3 month-year combinations with the highest total revenue.

SELECT CONCAT(b.arrival_date_month," ", b.arrival_date_year) AS Month_Year,
ROUND(SUM(p.adr*(s.stays_in_weekend_nights + s.stays_in_week_nights)),2) 
AS total_revenue FROM bookings b
JOIN payments p ON b.booking_id = p.booking_id
JOIN stays s ON b.booking_id = s.booking_id
WHERE b.is_canceled = 0
GROUP BY Month_Year
ORDER BY total_revenue DESC
LIMIT 3;


