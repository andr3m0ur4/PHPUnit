<?php

// $host = $GLOBALS['DB_HOST'];
// $db = $GLOBALS['DB_DBNAME_TEST'];
// $user = $GLOBALS['DB_USER'];
// $passdb = $GLOBALS['DB_PASSWD'];
// $link = mysqli_connect($host, $user, $passdb, $db) OR die('Site em manutencao, por favor aguarde alguns minutos.');
// $passdb = '';

// $query = mysqli_query($link, 'SHOW CREATE TABLE guestbook;');

// var_dump(mysqli_fetch_assoc($query));

if ($GLOBALS['EXEC_BOOTSTRAP'] == 'true') {
    exec(
        'mysqldump --column-statistics=0 --host=' . $GLOBALS['DB_HOST'] . ' --user=' . $GLOBALS['DB_USER'] .
        ' --password=' . $GLOBALS['DB_PASSWD'] . ' --no-data ' . $GLOBALS['DB_DBNAME'] . ' > ' . $GLOBALS['DB_PATH']
    );

    exec(
        'mysql --host=' . $GLOBALS['DB_HOST'] . ' --user=' . $GLOBALS['DB_USER'] . ' --password=' . $GLOBALS['DB_PASSWD'] .
        ' ' . $GLOBALS['DB_DBNAME_TEST'] . ' < ' . $GLOBALS['DB_PATH']
    );
}
