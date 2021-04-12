insert into friend
select f1.iD1,
    f2.iD2
from friend f1,
    friend f2
where f1.iD2 = f2.iD1
    and f1.iD1 <> f2.iD2
except
select *
from friend;