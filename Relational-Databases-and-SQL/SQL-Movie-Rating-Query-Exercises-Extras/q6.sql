select name,
    title,
    stars
from movie
    natural join (
        select rID,
            mID,
            stars
        from rating
        where stars in (
                select min(stars) as fewestStars
                from rating
            )
    )
    natural join reviewer;