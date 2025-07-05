# QUES 14:Find Top 1 Booking Per Country by Revenue
WITH cte as (
SELECT g.country,b.booking_id,
ROUND((p.adr*(s.stays_in_weekend_nights+s.stays_in_week_nights)),2)
AS total_revenue FROM guests g
JOIN bookings b ON g.guest_id = b.guest_id
JOIN stays s ON b.booking_id = s.booking_id
JOIN payments p ON b.booking_id = p.booking_id
WHERE b.is_canceled = 0
),
cte2 as (
SELECT *,
ROW_NUMBER() OVER (PARTITION BY g.country ORDER BY (total_revenue) DESC) AS rnk
FROM cte)
SELECT country,booking_id,total_revenue from cte2
WHERE rnk = 1
ORDER BY total_revenue DESC;


