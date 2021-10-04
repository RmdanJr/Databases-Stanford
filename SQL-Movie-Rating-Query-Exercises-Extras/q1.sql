select distinct name
from rating
    join reviewer using(rID)
where mID in (
        select distinct mID
        from rating
            join movie using(mID)
        where title = "Gone with the Wind"
    );