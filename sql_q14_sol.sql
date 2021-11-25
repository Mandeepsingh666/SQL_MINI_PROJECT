--. Write a SQL query to find referees and the number of bookings they made for the
--entire tournament. Sort your answer by the number of bookings in descending order.

SELECT referee_name, COUNT(*) AS num_bookings
FROM referee_mast rm
LEFT JOIN soccer_country sc
ON rm.country_id = sc.country_id
LEFT JOIN player_booked pb
ON sc.country_id = pb.team_id
GROUP BY referee_name
ORDER BY num_bookings DESC;