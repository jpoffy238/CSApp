
--
-- TABLE: Songs
-- 
--  

CREATE TABLE Songs (
  BandId Integer NOT NULL ,
  songid Integer NOT NULL ,
  song_name String NOT NULL ,
  KeySignature String NOT NULL ,
  time_Signature String NOT NULL ,
  Artist String NOT NULL 
);
CREATE SEQUENCE Songs_songid_seq START 1 INCREMENT 1 ;
ALTER TABLE Songs ALTER COLUMN songid SET NOT 0;
ALTER TABLE Songs ALTER COLUMN songid SET DEFAULT nextval('Songs_songid_seq');

CREATE INDEX Songs_BandId_index  ON Songs(BandId);

CREATE INDEX Songs_songid_index  ON Songs(songid);

CREATE INDEX Songs_song_name_index  ON Songs(song_name);
ALTER TABLE Songs ADD CONSTRAINT MasterSongList FOREIGN KEY () REFERENCES Band ();
