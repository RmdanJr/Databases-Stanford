select title,
    stars
from (
        select mID,
            max(stars) as stars
        from rating
        group by mID
    )
    natural join movie
order by title;