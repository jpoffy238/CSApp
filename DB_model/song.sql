
--
-- TABLE: Song
-- 
--  

CREATE TABLE Song (
  BandId Integer NOT NULL ,
  songid Integer NOT NULL ,
  song_name character varying(128) NOT NULL ,
  KeySignature character varying(10) NOT NULL ,
  time_Signature character varying(10) NOT NULL ,
  Artist character varying 50 NOT NULL ,
  DocLink character varying(512) NOT NULL 
);
CREATE SEQUENCE Song_songid_seq START 1 INCREMENT 1 ;
ALTER TABLE Song ALTER COLUMN songid SET NOT 0;
ALTER TABLE Song ALTER COLUMN songid SET DEFAULT nextval('Song_songid_seq');

CREATE INDEX Song_BandId_index  ON Song(BandId);

CREATE INDEX Song_songid_index  ON Song(songid);

CREATE INDEX Song_song_name_index  ON Song(song_name);
ALTER TABLE Song ADD CONSTRAINT MasterSongList FOREIGN KEY () REFERENCES Band ();
