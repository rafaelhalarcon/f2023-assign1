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
    if ($_GET['song_id'] == $song['song_id']) {
        echo $song['title'];
        
        // print "<pre>";
        // print_r($song);
        // print_r($song['title']);
        // // print_r($result);
        // print "</pre>";
        
        // for ($i = 0; $i < 10; $i++) {
            //     echo "<br>";
            // print_r($songs[$i]);
            //     echo "<br>";
            // }
            ?>
    <section>
        <h2 style="text-transform: capitalize;">SONG: <?= $song['title'] ?></h2>
        <fieldset>
            <legend>Main info</legend>
            <p><strong>Song name &nbsp;</strong><?= $song['title'] ?></p>
            <p><strong>Artist name&nbsp;</strong><?= $song['artist_name'] ?></p>
            <p><strong>Artist type &nbsp;</strong><?= $song['type_name'] ?></p>
            <p><strong>Genre &nbsp;</strong><?= $song['genre_name'] ?></p>
            <p><strong>Year &nbsp;</strong><?= $song['year'] ?></p>
            <p><strong>Duration &nbsp;</strong><?= $song['duration'] ?></p>
        </fieldset>
        <fieldset>
            <legend>Statistics</legend>
            <p><strong>BPM &nbsp;</strong><?= $song['bpm'] ?></p>
            <p><strong>Energy&nbsp;</strong><?= $song['energy'] ?></p>
            <p><strong>Danceability &nbsp;</strong><?= $song['danceability'] ?></p>
            <p><strong>Loudness &nbsp;</strong><?= $song['loudness'] ?></p>
            <p><strong>Liveness &nbsp;</strong><?= $song['liveness'] ?></p>
            <p><strong>Valence &nbsp;</strong><?= $song['valence'] ?></p>
            <p><strong>Acousticness &nbsp;</strong><?= $song['acousticness'] ?></p>
            <p><strong>Speechiness &nbsp;</strong><?= $song['speechiness'] ?></p>
            <p><strong>Popularity &nbsp;</strong><?= $song['popularity'] ?></p>
        </fieldset>
        
    </section>
    <?php }
}

