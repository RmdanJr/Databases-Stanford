select count(1)
from (
        select ID2
        from friend
        where ID1 in (
                select ID2
                from friend
                where ID1 in (
                        select ID
                        from highschooler
                        where name = "Cassandra"
                    )
            )
            and ID2 not in (
                select ID
                from highschooler
                where name = "Cassandra"
            )
        union
        select ID2
        from friend
        where ID1 in (
                select ID
                from highschooler
                where name = "Cassandra"
            )
    );