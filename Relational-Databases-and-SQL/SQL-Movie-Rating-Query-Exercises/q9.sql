select avg(avgBefore.avg) - avg(avgAfter.avg) as difference
from (
        select avg(stars) as avg
        from rating
            join movie using(mID)
        where year < 1980
        group by mID
    ) as avgBefore,
    (
        select avg(stars) as avg
        from rating
            join movie using(mID)
        where year > 1980
        group by mID
    ) as avgAfter;