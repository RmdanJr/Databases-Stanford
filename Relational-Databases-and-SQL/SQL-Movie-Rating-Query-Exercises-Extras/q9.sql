select title,
    director
from movie m1
where (
        select count(1)
        from movie m2
        where m1.director = m2.director
    ) > 1
order by director,
    title;