<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <head>
        <meta charset="UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Arthur Bakir and Rafael Hernandez Alarcon" />
        <meta name="keywords" content="Music BPM Energy danceability acoustic" />
        <meta name="description" content="WEBII assignment 1 music browser" />
        <link rel="stylesheet" href="../style/reset.css">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="">
        <title>Song Detail</title>
    </head>
</head>
<header>
    <?= navBarHead('Modern Music Player', '#', '#', '#', '#') ?>
</header>

<body>
    <?php
    try {
        $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
        $songsCatalog = new SongsDB($conn);
        $songs = $songsCatalog->getAll();
    } catch (Exception $e) {
        die($e->getMessage());
    }

    foreach ($songs as $song) {
        if ($_GET['song_id'] == $song['song_id']) {

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
                <?= backButton() ?>
            </section>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>
<?php }
    }
