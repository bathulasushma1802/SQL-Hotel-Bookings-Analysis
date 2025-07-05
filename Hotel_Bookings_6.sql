#QUES 12: Which countries had more than 50% of their bookings canceled?
SELECT g.country,
COUNT(*) AS total,SUM(b.is_canceled) AS canceled,
ROUND(SUM(CASE WHEN b.is_canceled = 1 THEN 1 END) * 100 
/ COUNT(b.booking_id),2) AS canceled_bookings
FROM bookings b
JOIN guests g 
ON g.guest_id = b.guest_id
GROUP BY country
HAVING canceled_bookings > 50;

# QUES 13:Determine the average revenue lost due to cancellations for each hotel type.
SELECT h.hotel,
ROUND(AVG(CASE WHEN b.is_canceled = 1 
THEN p.adr*(s.stays_in_weekend_nights+s.stays_in_week_nights)
ELSE 0 END),2) AS avg_revenue_lost
FROM bookings b
JOIN hotels h 
ON b.booking_id = h.booking_id
JOIN payments p 
ON b.booking_id = p.booking_id
JOIN stays s 
ON b.booking_id = s.booking_id
GROUP BY h.hotel;



 



