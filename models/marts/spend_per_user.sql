SELECT p.user_id, SUM(i.price) AS spend
  FROM {{source('LUQMAN', 'LUQMAN_PURCHASE')}} p
    INNER JOIN {{source('LUQMAN', 'LUQMAN_LINE_ITEM')}} li ON li.purchase_id = p.id
    INNER JOIN {{source('LUQMAN', 'LUQMAN_ITEM')}} i ON i.item_id = li.item_id
  GROUP BY p.user_id
