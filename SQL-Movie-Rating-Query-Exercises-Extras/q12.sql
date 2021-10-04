select director,
    title,
    max(stars)
from movie natural join rating
where director is not null
group by director;