<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php'; ?>

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
    <title>Song Detail</title>

</head>
<header>
    <?= navBarHead('Song detail') ?>
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

                <h3 style="text-transform: capitalize; color:white; padding-left: 2rem">SONG: <?= $song['title'] ?></h3>
                <div class="col">
                    <div class="card ">
                        <h3 class="card-header">Main info</h3>
                        <div class="card-body">
                                <ul class="card-text mb-3">
                                    <li><strong>Song name &nbsp;</strong><?= $song['title'] ?></li>
                                    <li><strong>Artist name&nbsp;</strong><?= $song['artist_name'] ?></li>
                                    <li><strong>Artist type &nbsp;</strong><?= $song['type_name'] ?></li>
                                    <li><strong>Genre &nbsp;</strong><?= $song['genre_name'] ?></li>
                                    <li><strong>Year &nbsp;</strong><?= $song['year'] ?></li>
                                    <li><strong>Duration &nbsp;</strong><?= $song['duration'] ?></li>
                                </ul>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <h3 class="card-header">Statistics</h3>
                        <div class="card-body">
                            <ul class="card-text mb-3">
                                <li><strong>BPM &nbsp;</strong><?= $song['bpm'] ?></li>
                                <li><strong>Energy&nbsp;</strong><?= $song['energy'] ?></li>
                                <li><strong>Danceability &nbsp;</strong><?= $song['danceability'] ?></li>
                                <li><strong>Loudness &nbsp;</strong><?= $song['loudness'] ?></li>
                                <li><strong>Liveness &nbsp;</strong><?= $song['liveness'] ?></li>
                                <li><strong>Valence &nbsp;</strong><?= $song['valence'] ?></li>
                                <li><strong>Acousticness &nbsp;</strong><?= $song['acousticness'] ?></li>
                                <li><strong>Speechiness &nbsp;</strong><?= $song['speechiness'] ?></li>
                                <li><strong>Popularity &nbsp;</strong><?= $song['popularity'] ?></li>
                            </ul>
                        </div>
                    </div>
                </div>
                </div>
                <div class="mx-auto my-5">

                    <?= backButton() ?>
                </div>
            </section>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>
<?php }
    }
