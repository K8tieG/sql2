-- Create a view called rock that selects all the tracks where the genre is Rock.

CREATE VIEW rock AS
SELECT * from track
Where genre.id(
SELECT genre_id from genre WHERE name = 'Rock');


-- Create a view called classical_count that gets a count of all the tracks from the playlist called Classical.

CREATE VIEW classical_count AS
SELECT COUNT(track.track_id)
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Classical'
;
select * from classical_count

