select name
from highschooler
    join (
        select ID2 as ID
        from (
                select ID
                from highschooler
                where name = "Gabriel"
            )
            join friend on ID = ID1
    ) using(ID);