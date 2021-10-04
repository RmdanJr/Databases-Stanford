select a.name as Aname,
    a.grade as Agrade,
    b.name as Bname,
    b.grade as Bgrade
from highschooler a,
    highschooler b,
    likes l1,
    likes l2
where a.ID = l1.ID1
    and b.ID = l1.ID2
    and a.ID = l2.ID2
    and b.ID = l2.ID1
    and a.name < b.name;