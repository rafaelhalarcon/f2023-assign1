<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php';

try {
    $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
    $songsCatalog = new SongsDB($conn);
    $songs = $songsCatalog->getAll();
} catch (Exception $e) {
    die($e->getMessage());
}

foreach ($songs as $song) {
    print "<pre>";
    print_r($song);
    print_r($song['title']);
    // print_r($result);
    print "</pre>";
}

for ($i = 0; $i <= 10; $i++) {
    echo "<br>";
    print_r($songs[$i]);
    echo "<br>";
}
