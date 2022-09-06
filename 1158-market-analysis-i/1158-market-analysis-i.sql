SELECT u.user_id AS buyer_id, u.join_date AS join_date  , 
coalesce(count(item_id),0) AS orders_in_2019 
FROM Users AS u
LEFT JOIN Orders AS o ON u.user_id = o.buyer_id AND YEAR(o.order_date) = 2019
GROUP BY u.user_id
