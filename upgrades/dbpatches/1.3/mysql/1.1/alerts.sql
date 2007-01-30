CREATE TABLE alerts (
  alertid		int(4)		NOT NULL auto_increment,
  actionid		int(4)		DEFAULT '0' NOT NULL,
  triggerid		int(4)		DEFAULT '0' NOT NULL,
  userid		int(4)		DEFAULT '0' NOT NULL,
  clock			int(4)		DEFAULT '0' NOT NULL,
--  type		varchar(10)	DEFAULT '' NOT NULL,
  mediatypeid		int(4)		DEFAULT '0' NOT NULL,
  sendto		varchar(100)	DEFAULT '' NOT NULL,
  subject		varchar(255)	DEFAULT '' NOT NULL,
  message		blob		DEFAULT '' NOT NULL,
  status		int(4)		DEFAULT '0' NOT NULL,
  retries		int(4)		DEFAULT '0' NOT NULL,
  error			varchar(128)	DEFAULT '' NOT NULL,
  repeats		int(4)		DEFAULT '0' NOT NULL,
  maxrepeats		int(4)		DEFAULT '0' NOT NULL,
  nextcheck		int(4)		DEFAULT '0' NOT NULL,
  delay			int(4)		DEFAULT '0' NOT NULL,

  PRIMARY KEY (alertid),
  INDEX (actionid),
  KEY clock (clock),
  KEY triggerid (triggerid),
  KEY status_retries (status, retries),
  KEY mediatypeid (mediatypeid),
  KEY userid (userid)
) type=InnoDB;
