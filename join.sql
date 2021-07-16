
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select * from invoice_line where unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

select i.invoice_date, c.first_name, c.last_name
from invoice i
	join customer c
		on c.customer_id = i.customer_id;


-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
-- Support reps are on the employee table.

select c.first_name as customer_first, c.last_name as customer_last, e.first_name as rep_first, e.last_name as rep_last
from customer c
join employee e
on c.support_rep_id = e.employee_id;


-- Get the album title and the artist name from all albums.

select alb.title as album_title, a.name as artist_name
from album alb
join artist a
on alb.artist_id = a.artist_id;

-- Get all playlist_track track_ids where the playlist name is Music.

select p.playlist_track_id, pl.name
from playlist_track p
join playlist pl
on p.playlist_id = pl.playlist_id
where pl.name ='music'
;

select * from playlist
where playlist_id in(
  select playlist_track_id from playlist_track where name = 'Music');

-- Get all track name`s for `playlist_id 5.

select name from track
where track_id in(
  select track_id from playlist_track where playlist_id =5);

SELECT t.name
FROM track t
JOIN playlist_track pt 
ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).

select t.name as song, p.name as playlist
from playlist p
join playlist_track pt
on p.playlist_id = pt.playlist_id
join track t
on pt.track_id = t.track_id


-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).

select t.name as track_name, a.title as album_title
from genre g 
join track t
on t.genre_id = g.genre_id
join album a
on a.album_id = t.album_id where g.name = 'Alternative & Punk';
