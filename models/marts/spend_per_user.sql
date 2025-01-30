SELECT p.user_id, SUM(i.price) AS spend
  FROM {{source('LUQMAN', 'PURCHASE')}} p
    INNER JOIN {{source('LUQMAN', 'LINE_ITEM')}} li ON li.purchase_id = p.id
    INNER JOIN {{source('LUQMAN', 'ITEM')}} i ON i.item_id = li.item_id
  GROUP BY p.user_id
