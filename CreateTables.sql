CREATE TABLE hotels (
    booking_id INT PRIMARY KEY,
    hotel VARCHAR(50)
);
CREATE TABLE guests (
    guest_id INT PRIMARY KEY,
    country VARCHAR(50),
    market_segment VARCHAR(50),
    customer_type VARCHAR(50),
    is_repeated_guest BOOLEAN
);
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    is_canceled BOOLEAN,
    lead_time INT,
    arrival_date_year INT,
    arrival_date_month VARCHAR(15)
);
CREATE TABLE payments (
    booking_id INT PRIMARY KEY,
    adr FLOAT,
    deposit_type VARCHAR(50),
    total_of_special_requests INT
);
CREATE TABLE stays (
    booking_id INT PRIMARY KEY,
    stays_in_weekend_nights INT,
    stays_in_week_nights INT,
    adults INT,
    children FLOAT,
    babies INT
);