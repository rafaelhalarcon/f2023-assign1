<?php include './includes/configdb.inc.php';
include './includes/phpcomponents.inc.php';
include './includes/dbclasses.php';
// try {
//     $pdo = new PDO('sqlite:./db/music.db');
//     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     $conn = DatabaseHelper::connect(DBCONNSTRING);
//     // $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
//     $songsCatalog = new SongsDB($conn);
//     $topGenreSongs = $songsCatalog->topGenre();
//     $topArtistSongs = $songsCatalog->topArtist();
//     $mostPopular = $songsCatalog->mostPopularSongs();
//     $oneHit = $songsCatalog->oneHitWonders();
//     $longestAcoustic = $songsCatalog->longestAcoustic();
//     $atTheClub = $songsCatalog->atTheClub();
//     $runninSongs = $songsCatalog->runningSongs();
//     $studyingSongs = $songsCatalog->studyingSongs();
// } catch (Exception $e) {
//     die($e->getMessage());
// } 
// I HAVE NO IDEA WHY THIS IS DIFFERENT YET STILL WORKING BUT YAHOO :)
try {
    // Create a connection to the SQLite database
    $pdo = new PDO(DBCONNSTRING);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Create instances of your database classes
    $songsCatalog = new SongsDB($pdo);

    // Fetch data using your database class methods
    $topGenreSongs = $songsCatalog->topGenre();
    $topArtistSongs = $songsCatalog->topArtist();
    $mostPopular = $songsCatalog->mostPopularSongs();
    $oneHit = $songsCatalog->oneHitWonders();
    $longestAcoustic = $songsCatalog->longestAcoustic();
    $atTheClub = $songsCatalog->atTheClub();
    $runningSongs = $songsCatalog->runningSongs();
    $studyingSongs = $songsCatalog->studyingSongs();
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
} ?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Arthur Bakir and Rafael Hernandez Alarcon" />
    <meta name="keywords" content="Music BPM Energy danceability acoustic" />
    <meta name="description" content="WEBII assignment 1 music browser" />
    <link href="./style/reset.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet" />
    <link href="./style/general.css" rel="stylesheet" />
    <link rel="icon" href="./images/favicon-32x32.png" type="image/png" sizes="32x32">
    <title>Music browser</title>
</head>
<header>
    <?= navBarHead('Modern Music Browser') ?>
</header>

<body>
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Top Genre </h3>
                    <ul class="card-text">
                        <?php
                        foreach ($topGenreSongs as $topGenreSong) {
                        ?><a href="./browse_search_results.php?searchField=genre_name&genre_name=<?= $topGenreSong['genre_name'] ?>">
                                <li style="text-transform:capitalize"> <?= $topGenreSong['genre_name'] . " (" . $topGenreSong['song_count'] . ")" ?></li>
                            </a>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Top Artists </h3>
                    <ul class="card-text">
                        <?php foreach ($topArtistSongs as $topArtistSong) {
                        ?><a href="./browse_search_results.php?searchField=artist&artist_name=<?= $topArtistSong['artist_name'] ?>">
                                <li><?= $topArtistSong['artist_name'] . " (" . $topArtistSong['song_count'] . " songs)" ?></li>
                            </a>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Most Popular Songs </h3>
                    <ul class="card-text">
                        <?php foreach ($mostPopular as $popSong) {
                        ?><li><a href="single_song.php?song_id=<?= $popSong['song_id'] ?>"><?= truncateTitle25($popSong['title']) . " - " . $popSong['artist_name'] ?></a></li>
                        <?php }
                        ?></ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">One-Hit Wonders</h3>
                    <ul class="card-text">
                        <?php foreach ($oneHit as $oneHitSong) {
                        ?><li><a href="single_song.php?song_id=<?= $oneHitSong['song_id'] ?>"><?= truncateTitle25($oneHitSong['title']) . " - " . $oneHitSong['artist_name'] ?> </a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Longest Acoustic Songs</h3>
                    <ul class="card-text">
                        <?php foreach ($longestAcoustic as $longAcousticSong) {
                        ?><li><a href="single_song.php?song_id=<?= $longAcousticSong['song_id'] ?>"><?= truncateTitle25($longAcousticSong['title']) . " - " . $longAcousticSong['artist_name'] ?> </a></li>

                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">At the Club</h3>
                    <ul class="card-text">
                        <?php foreach ($atTheClub as $atClubSong) {
                        ?><li><a href="single_song.php?song_id=<?= $atClubSong['song_id'] ?>"><?= truncateTitle25($atClubSong['title']) . " - " . $atClubSong['artist_name'] . " [BPM: " . $atClubSong['bpm'] . "]" ?> </a></li>

                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Running Songs</h3>
                    <ul class="card-text">
                        <?php foreach ($runningSongs as $runningSong) {
                        ?><li><a href="single_song.php?song_id=<?= $runningSong['song_id'] ?>"><?= truncateTitle25($runningSong['title']) . " - " . $runningSong['artist_name'] . " [BPM: " . $runningSong['bpm'] . "]" ?> </a></li>

                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-header">Studying Songs</h3>
                    <ul class="card-text">
                        <?php foreach ($studyingSongs as $studyingSong) {
                        ?><li><a href="single_song.php?song_id=<?= $studyingSong['song_id'] ?>"><?= truncateTitle25($studyingSong['title']) . " - " . $studyingSong['artist_name'] . " [BPM: " . $studyingSong['bpm'] . "]" ?> </a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body>
<footer>
    <?= footer(); ?>
</footer>

</html>

<?php  ?>