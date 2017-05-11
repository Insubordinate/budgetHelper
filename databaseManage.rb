require "dbi"


begin
	# connecting to the SQLite3 server
	dbh = DBI.connect("DBI:SQLite3:test.db")
	dbh.do("CREATE TABLE EMPLOYEE (
		FIRST_NAME   CHAR(20) NOT NULL)");	
ensure
	dbh.disconnect if dbh
end	
