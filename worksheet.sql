select count(product_id), category_id from PRODUCTS
where list_price > 100 and CATEGORY_ID < 5
group by CATEGORY_ID;