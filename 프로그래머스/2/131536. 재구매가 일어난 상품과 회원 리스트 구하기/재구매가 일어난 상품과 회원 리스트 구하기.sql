-- 코드를 입력하세요
SELECT DISTINCT a.USER_ID, a.PRODUCT_ID
FROM ONLINE_SALE a
JOIN ONLINE_SALE b ON a.USER_ID = b.USER_ID
                    AND a.PRODUCT_ID = b.PRODUCT_ID
                    AND a.SALES_DATE < b.SALES_DATE
ORDER BY USER_ID ASC, PRODUCT_ID DESC;