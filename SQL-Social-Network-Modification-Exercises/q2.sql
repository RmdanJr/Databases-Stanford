delete from likes
where ID2 in (
        select ID2
        from friend
        where friend.ID1 = likes.ID1
    )
    and ID2 not in (
        select l.ID1
        from likes l
        where l.ID2 = likes.ID1
    );