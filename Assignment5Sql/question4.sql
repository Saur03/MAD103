-- Delete records of games that were shown on CBS
DELETE FROM TopTVEvents
WHERE Network = 'CBS';