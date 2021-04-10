select name
from reviewer
    join rating using(rID)
where ratingDate is null;