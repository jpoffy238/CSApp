
--
-- TABLE: Users
-- 
--  

CREATE TABLE Users (
  UserId Integer NOT NULL ,
  useremail String NOT NULL ,
  BandId Integer unsigned NOT NULL ,
  Active Boolean NOT NULL  DEFAULT True,
  Admin Boolean NOT NULL  DEFAULT False
);
CREATE SEQUENCE Users_UserId_seq START 1 INCREMENT 1 ;
ALTER TABLE Users ALTER COLUMN UserId SET NOT 0;
ALTER TABLE Users ALTER COLUMN UserId SET DEFAULT nextval('Users_UserId_seq');

CREATE INDEX Users_UserId_index  ON Users(UserId);

CREATE INDEX Users_useremail_index  ON Users(useremail);
ALTER TABLE Users ADD CONSTRAINT Band Members FOREIGN KEY () REFERENCES Band ();
