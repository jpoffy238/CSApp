
--
-- TABLE: Band
-- 
--  

CREATE TABLE Band (
  BandId Integer unsigned NOT NULL ,
  BandName String NOT NULL ,
  License String NOT NULL ,
  Active Boolean NOT NULL  DEFAULT True
);
CREATE SEQUENCE Band_BandId_seq START 1 INCREMENT 1 ;
ALTER TABLE Band ALTER COLUMN BandId SET NOT 0;
ALTER TABLE Band ALTER COLUMN BandId SET DEFAULT nextval('Band_BandId_seq');

CREATE INDEX Band_BandId_index  ON Band(BandId);

CREATE INDEX Band_BandName_index  ON Band(BandName);
