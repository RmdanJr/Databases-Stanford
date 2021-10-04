select distinct year
from movie
    join rating using(mID)
where stars >= 4
order by year asc;