<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php';
try {
    $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
    $songsCatalog = new SongsDB($conn);
    $topGenreSongs = $songsCatalog->topGenre();
    $topArtistSongs = $songsCatalog->topArtist();
    $mostPopular = $songsCatalog->mostPopularSongs();
    $oneHit = $songsCatalog->oneHitWonders();
    $longestAcoustic = $songsCatalog->longestAcoustic();
    $atTheClub = $songsCatalog->atTheClub();
    $runninSongs = $songsCatalog->runningSongs();
    $studyingSongs = $songsCatalog->studyingSongs();
} catch (Exception $e) {
    die($e->getMessage());
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
    <link rel="icon" type="image/x-icon" href="">
    <title>Music browser</title>
</head>
<header>
    <?= navBarHead('Modern Music Player', '#', '#', '#', '#') ?>
</header>

<body>
    <h2>Top Genre Based on the Number of Songs</h2>
    <?php
    ?> <ul>
        <?php
        foreach ($topGenreSongs as $topGenreSong) {
        ?><a href="./browse_search_results.php?searchField=genre_name&genre_name=<?= $topGenreSong['genre_name'] ?>">
                <li style="text-transform:capitalize"> <?= $topGenreSong['genre_name'] . " (" . $topGenreSong['song_count'] . ")" ?></li>
            </a>

        <?php } ?>
    </ul>
    <div></div>

    <h2>Top Artists Based on the Number of Songs</h2>
    <ul>
        <?php
        foreach ($topArtistSongs as $topArtistSong) {
        ?><li><a href="./browse_search_results.php?searchField=artist&artist_name=<?= $topArtistSong['artist_name'] ?>">
                    <?= $topArtistSong['artist_name'] . " (" . $topArtistSong['song_count'] . " songs)" ?></a></li>
        <?php } ?>
    </ul>
    <div></div>

    <h2>Most Popular Songs Sorted by Popularity</h2>
    <ul>
        <?php foreach ($mostPopular as $popSong) {
        ?><li><a href="single_song.php?song_id=<?= $popSong['song_id'] ?>"><?= $popSong['title'] . " - " . $popSong['artist_name'] ?></a></li>
        <?php }
        ?></ul>
    <div></div>

    <h2>One-Hit Wonders</h2>
    <ul>
        <?php foreach ($oneHit as $oneHitSong) {
        ?><li><a href="single_song.php?song_id=<?= $oneHitSong['song_id'] ?>"><?= $oneHitSong['title'] . " - " . $oneHitSong['artist_name'] ?> </a></li>
        <?php } ?>
    </ul>
    <div></div>

    <h2>Longest Acoustic Songs</h2>
    <ul>
        <?php foreach ($longestAcoustic as $longAcousticSong) {
        ?><li><a href="single_song.php?song_id=<?= $longAcousticSong['song_id'] ?>"><?= $longAcousticSong['title'] . " - " . $longAcousticSong['artist_name'] ?> </a></li>

        <?php } ?>
    </ul>
    <div></div>

    <h2>At the Club</h2>
    <ul>
        <?php foreach ($atTheClub as $atClubSong) {
        ?><li><a href="single_song.php?song_id=<?= $atClubSong['song_id'] ?>"><?= $atClubSong['title'] . " - " . $atClubSong['artist_name'] . " [BPM: " . $atClubSong['bpm'] . "]" ?> </a></li>

        <?php } ?>
    </ul>
    <div></div>

    <h2>Running Songs</h2>
    <ul>
        <?php foreach ($runninSongs as $runningSong) {
        ?><li><a href="single_song.php?song_id=<?= $runningSong['song_id'] ?>"><?= $runningSong['title'] . " - " . $runningSong['artist_name'] . " [BPM: " . $runningSong['bpm'] . "]" ?> </a></li>

        <?php } ?>
    </ul>
    <div></div>

    <h2>Studying Songs</h2>
    <ul>
        <?php foreach ($studyingSongs as $studyingSong) {
        ?><li><a href="single_song.php?song_id=<?= $studyingSong['song_id'] ?>"><?= $studyingSong['title'] . " - " . $studyingSong['artist_name'] . " [BPM: " . $studyingSong['bpm'] . "]" ?> </a></li>
        <?php } ?>
    </ul>

</body>
<footer>
    <?= footer(); ?>
</footer>

</html>

<?php  ?>