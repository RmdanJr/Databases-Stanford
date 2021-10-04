select Aname,
    Agrade,
    name as Bname,
    grade as Bgrade
from (
        select name as Aname,
            grade as Agrade,
            ID2 as ID
        from highschooler
            join likes on likes.ID1 = highschooler.ID
    )
    natural join highschooler
where Agrade - Bgrade >= 2;