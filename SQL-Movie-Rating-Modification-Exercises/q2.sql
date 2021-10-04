update movie
set year = year + 25
where mID in (
        select mID
        from (
                select mID,
                    avg(stars) as avgStars
                from rating
                group by mID
            )
        where avgStars >= 4
    );