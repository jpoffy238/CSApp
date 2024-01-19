
--
-- TABLE: setlist
-- 
--  

CREATE TABLE setlist (
  performanceId Integer NOT NULL ,
  Songid Integer NOT NULL 
);

CREATE INDEX setlist_performanceId_index  ON setlist(performanceId);
ALTER TABLE setlist ADD CONSTRAINT  FOREIGN KEY () REFERENCES performance ();
ALTER TABLE setlist ADD CONSTRAINT  FOREIGN KEY () REFERENCES Songs ();
