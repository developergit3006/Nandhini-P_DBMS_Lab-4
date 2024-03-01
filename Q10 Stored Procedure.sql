CREATE DEFINER=`root`@`localhost` PROCEDURE `ListOfSupplierRatingDetails`()
BEGIN

select 
supp_id as SUPPLIER_ID,
supp_name as SUPPLIER_NAME,
AverageRating,
CASE
WHEN AverageRating=5 then'Excellent Service'
WHEN AverageRating>4 then'Good Service'
WHEN AverageRating>2 then'Average Service'
ELSE 'Poor Service'
 END as Type_Of_Service
 from 
(select 
s.supp_id,
s.supp_name,
avg(r.rat_ratstars)as AverageRating
from
rating r
inner join`order`o
inner join supplier_pricing sp
inner join supplier s 
on(r.ord_id=o.ord_id 
and o.pricing_id=sp.pricing_id
and sp.supp_id=s.Supp_id)
group by supp_id
order by supp_id
) as R_O_SP_S ;
END