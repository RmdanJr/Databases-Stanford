select name,
    title
from movie
    natural join (
        select a.rID,
            a.mID
        from rating a,
            rating b
        where a.stars > b.stars
            and a.mID = b.mID
            and a.rID = b.rID
            and a.ratingDate > b.ratingDate
    )
    natural join reviewer;