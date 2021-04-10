select title,
    avg(stars) as average
from movie
    natural join rating
group by mId
order by average desc,
    title asc;