select title
from movie
where mID not in (
                select mID
                from (
                                select rID
                                from reviewer
                                where name = "Chris Jackson"
                        )
                        natural join rating
        );