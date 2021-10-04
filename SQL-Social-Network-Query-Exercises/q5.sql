select a.name,
    a.grade,
    b.name,
    b.grade
from highschooler a,
    highschooler b,
    likes l
where a.ID = l.ID1
    and b.ID = l.ID2
    and b.ID not in (
        select ID1
        from likes
    );