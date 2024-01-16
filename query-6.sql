SELECT DISTINCT author_id AS id

FROM Views v
where viewer_id = author_id
order by id asc;