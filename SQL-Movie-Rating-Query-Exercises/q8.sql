select title,
    spread as 'rating spread'
from (
        select mID,
            max(stars) - min(stars) as spread
        from rating
        group by mID
    )
    natural join movie
order by spread desc,
    title;