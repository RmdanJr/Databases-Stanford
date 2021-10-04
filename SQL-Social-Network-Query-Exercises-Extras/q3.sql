select avg(num)
from (
        select count(ID2) as num
        from friend
        group by ID1
    );