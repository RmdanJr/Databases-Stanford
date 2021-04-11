select name,
    grade
from highschooler
where ID not in (
        select ID1
        from highschooler a,
            highschooler b,
            friend f
        where a.ID <> b.ID
            and a.ID = f.ID1
            and b.ID = f.ID2
            and a.grade <> b.grade
    )
order by grade,
    name;