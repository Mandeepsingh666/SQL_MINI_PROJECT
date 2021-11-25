--Write a SQL query to find the number of bookings that happened in stoppage time

SELECT Count(*)  as number_of_bookings from player_booked 
WHERE play_schedule ="ST";