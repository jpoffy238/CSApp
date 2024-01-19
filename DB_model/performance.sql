
--
-- TABLE: performance
-- 
--  

CREATE TABLE performance (
  performanceId Integer NOT NULL ,
  bandId Integer NOT NULL ,
  dateofPerformance date NOT NULL ,
  notes String
);
CREATE SEQUENCE performance_performanceId_seq START 1 INCREMENT 1 ;
ALTER TABLE performance ALTER COLUMN performanceId SET NOT 0;
ALTER TABLE performance ALTER COLUMN performanceId SET DEFAULT nextval('performance_performanceId_seq');

CREATE INDEX performance_performanceId_index  ON performance(performanceId);

CREATE INDEX performance_bandId_index  ON performance(bandId);
ALTER TABLE performance ADD CONSTRAINT  FOREIGN KEY () REFERENCES Band ();
