select title,
    avg(stars) as average
from movie
    natural join rating
group by mId
having average = (
        select min(average_stars)
        from (
                select title,
                    avg(stars) as average_stars
                from movie
                    natural join rating
                group by mId
            )
    );