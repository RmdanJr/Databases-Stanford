select name,
    title,
    stars,
    ratingDate
from reviewer
    natural join rating
    natural join movie
order by name,
    title,
    stars,
    ratingDate;