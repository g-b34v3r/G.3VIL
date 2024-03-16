#!/bin/bash
#
#   >  DB CFG


DBCREDS=.tmp/db.cfg
USER=$(csvtool col 1 $DBCREDS)
DB=$(csvtool col 2 $DBCREDS)
CREATE=$(csvtool col 3 $DBCREDS)
CONNECT=$(csvtool col 4 $DBCREDS)

function CREATE {
echo Bitchin
mysqladmin create $DB --user $USER
mysql -u $USER --database=$DB -e "GRANT ALL PRIVILEGES ON $DB.* TO $USER@localhost"
mysql -u $USER --database=$DB -e "CREATE TABLE apkeys (id INT AUTO_INCREMENT PRIMARY KEY, passwordA VARCHAR(100), passwordB VARCHAR(100));"
}
function CONNECT {
echo FUCKYEAH
mysql -u $USER --database=$DB
}


yad --separator="," --form --field="New DB::LBL" --field="Username:" --field="DBName:" --field="Create New:CHK" --field="Existing:CHK"|tee .tmp/db.cfg

USER=$(csvtool col 2 $DBCREDS)
DB=$(csvtool col 3 $DBCREDS)
CREATE=$(csvtool col 4 $DBCREDS)
CONNECT=$(csvtool col 5 $DBCREDS)

if [ $CREATE == TRUE ]
then
    CREATE
elif [ $CONNECT == TRUE ]
then
    CONNECT
fi
