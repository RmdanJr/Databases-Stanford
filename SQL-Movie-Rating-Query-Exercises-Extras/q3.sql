select *
from (
        select title as list
        from movie
        union
        select name as list
        from rating
            join reviewer using(rID)
    )
order by list;