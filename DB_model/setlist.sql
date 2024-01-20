
--
-- TABLE: setlist
-- 
--  

CREATE TABLE setlist (
  setlistid Integer NOT NULL ,
  performanceId Integer NOT NULL ,
  Songid Integer NOT NULL ,
  htmllink Sting NOT NULL ,
  notes Text NOT NULL ,
  Image bytea NOT NULL ,
  order Integer NOT NULL 
);
CREATE SEQUENCE setlist_setlistid_seq START 1 INCREMENT 1 ;
ALTER TABLE setlist ALTER COLUMN setlistid SET NOT 0;
ALTER TABLE setlist ALTER COLUMN setlistid SET DEFAULT nextval('setlist_setlistid_seq');

CREATE INDEX setlist_setlistid_index  ON setlist(setlistid);

CREATE INDEX setlist_performanceId_index  ON setlist(performanceId);
ALTER TABLE setlist ADD CONSTRAINT  FOREIGN KEY () REFERENCES performance ();
ALTER TABLE setlist ADD CONSTRAINT  FOREIGN KEY () REFERENCES Song ();
