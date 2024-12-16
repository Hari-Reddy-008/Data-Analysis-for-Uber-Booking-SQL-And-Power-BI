-- 1. Retrieve all successful bookings:
SELECT * FROM uber_ride_data WHERE booking_Status = 'successful';
-- 2. Find the average ride distance for each vehicle type:
SELECT vehical_type, AVG(ride_distance) as avg_distance FROM uber_ride_data GROUP BY
vehical_type;
-- 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) as cancelled_rides FROM uber_ride_data WHERE Booking_Status = 'cancelled by Customer';
-- 4. List the top 5 customers who booked the highest number of rides:
SELECT customer_id, COUNT(booking_id) as total_rides FROM uber_ride_data GROUP BY
customer_id ORDER BY total_rides DESC LIMIT 5;
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) as cancelled_by_driver FROM uber_ride_data WHERE cancelled_reason_driver = 'Personal & Car related issues';
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(driver_ratings) as max_rating, MIN(driver_ratings) as min_rating FROM
uber_ride_data WHERE vehical_type = 'Prime Sedan';
-- 7. Retrieve all rides where payment was made using UPI:
SELECT * FROM uber_ride_data WHERE Payment_mode = 'UPI';
-- 8. Find the average customer rating per vehicle type:
SELECT vehical_type, AVG(customer_rating) as avg_customer_rating FROM uber_ride_data
GROUP BY vehical_type;
-- 9. Calculate the total booking value of rides completed successfully:
SELECT SUM(booking_value) as total_successful_value FROM uber_ride_data WHERE
booking_status = 'Successful';
-- 10. List all incomplete rides along with the reason:
SELECT * FROM uber_ride_data WHERE incomplete_rides =
1;