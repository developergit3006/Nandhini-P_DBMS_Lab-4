select p.PRO_ID, p.PRO_NAME
from `order` o  
inner join supplier_pricing sp
inner join  product p on(
o.PRICING_ID=sp.PRICING_ID
and sp.PRO_ID=p.PRO_ID
and o.ORD_DATE> 2021-10-25)
group by
p.PRO_ID;