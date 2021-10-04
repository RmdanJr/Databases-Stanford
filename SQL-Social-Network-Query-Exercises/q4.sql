select name,
    grade
from highschooler
where ID not in (
        select ID1 as ID
        from likes
        union
        select ID2 as ID
        from likes
    )
order by grade,
    name;