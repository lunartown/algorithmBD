WITH ranked_fish AS (
    SELECT i.ID, n.FISH_NAME, i.LENGTH, 
        rank() OVER (PARTITION BY i.FISH_TYPE ORDER BY LENGTH DESC) AS rk
    FROM FISH_INFO i
        INNER JOIN FISH_NAME_INFO n
        ON i.FISH_TYPE = n.FISH_TYPE
)
SELECT ID, FISH_NAME, LENGTH
FROM ranked_fish
WHERE rk = 1
ORDER BY ID;
    