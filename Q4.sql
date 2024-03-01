select co.cus_gender as 'Gender',
count(co.cus_gender) as 'NoOfCustomer'
from
(select
c.cus_id, 
c.cus_name,
c.cus_gender
from 
customer c
inner join `order` o
on
c.cus_id=o.cus_id
where
o.ord_amount>=3000
group by cus_id) as co
group by
co.cus_gender;