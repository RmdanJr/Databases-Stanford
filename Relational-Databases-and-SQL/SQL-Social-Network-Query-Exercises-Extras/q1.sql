select a.name,
    a.grade,
    b.name,
    b.grade,
    c.name,
    c.grade
from highschooler a,
    highschooler b,
    highschooler c,
    likes l1,
    likes l2
where a.ID = l1.ID1
    and b.ID = l1.ID2
    and b.ID = l2.ID1
    and c.ID = l2.ID2
    and not a.ID = b.ID
    and not a.ID = c.ID
    and not b.ID = c.ID;