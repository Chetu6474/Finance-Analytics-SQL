SELECT *, concat (name," - ",variant_name) as Full_name, 
(price+variant_price) as Full_price
FROM items
cross join variants;