SELECT u.id AS user_id, COUNT(e.external_id) AS logins 
FROM {{source('LUQMAN', 'LUQMAN_USER_INFO')}} u, {{source('LUQMAN', 'LUQMAN_WEB_EVENTS')}} e
WHERE u.external_id = e.external_id
GROUP BY u.id
