SELECT v.id AS venue, SUM(t.price) AS total_revenue
FROM ticket_REALTIME t
JOIN event_REALTIME  e  ON t.eventid  = e.id
JOIN venue_REALTIME  v  ON e.venueid = v.id
GROUP BY
v.id
ORDER BY
total_revenue DESC
LIMIT 1