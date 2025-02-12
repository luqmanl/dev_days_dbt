SELECT u.id AS user_id, COUNT(e.external_id) AS logins 
FROM {{source('LUQMAN', 'USER_INFO')}} u, {{source('LUQMAN', 'WEB_EVENTS')}} e
WHERE u.external_id = e.external_id
GROUP BY u.id
