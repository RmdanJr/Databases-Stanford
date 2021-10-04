select distinct re1.name,
    re2.name
from rating r1,
    rating r2,
    reviewer re1,
    reviewer re2
where r1.mID = r2.mID
    and r1.rID = re1.rID
    and r2.rID = re2.rID
    and re1.name < re2.name
order by re1.name,
    re2.name;