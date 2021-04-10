select name,
    title,
    stars
from rating
    natural join movie
    natural join reviewer
where name = director;