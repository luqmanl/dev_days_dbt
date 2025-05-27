SELECT user_id,
FROM {{source('LUQMAN', 'LUQMAN_USER_INFO')}}
WHERE user_id < 10