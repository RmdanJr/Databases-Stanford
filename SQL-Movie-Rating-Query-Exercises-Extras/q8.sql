select name
from reviewer
    natural join (
        select rID
        from rating
        group by rID
        having count(rID) >= 3
    );