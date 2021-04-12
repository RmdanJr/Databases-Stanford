select name,
    grade
from highschooler
where ID in (
        select ID
        from (
                select ID1 as ID,
                    count(ID2) as countID
                from friend
                group by ID1
            )
        where countID = (
                select max(countID)
                from (
                        select count(ID2) as countID
                        from friend
                        group by ID1
                    )
            )
    );