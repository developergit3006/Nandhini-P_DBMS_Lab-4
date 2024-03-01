select CUS_NAME, 
CUS_GENDER
from
customer
where cus_name like 'A%' or 
cus_name like '%A';
