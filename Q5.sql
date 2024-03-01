select O.*, 
p.pro_name,
p.PRO_DESC
from
`order` o
inner join supplier_pricing sp
inner join product p on
(o.PRICING_ID=sp.PRICING_ID 
and sp.pro_id=p.pro_id)
where 
o.cus_id=2;
