select a.name,
    a.grade,
    b.name,
    b.grade,
    c.name,
    c.grade
from highschooler a,
    highschooler b,
    highschooler c,
    likes,
    friend f1,
    friend f2
where a.ID = likes.ID1
    and b.ID = likes.ID2
    and a.ID = f1.ID1
    and c.ID = f1.ID2
    and b.ID = f2.ID1
    and c.ID = f2.ID2
    and b.ID not in (
        select ID2
        from friend
        where ID1 = a.ID
    );