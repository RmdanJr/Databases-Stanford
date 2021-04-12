select name,
    grade
from highschooler h1
where grade not in (
        select h2.grade
        from friend,
            highschooler h2
        where h1.ID = friend.ID1
            and h2.ID = friend.ID2
    );