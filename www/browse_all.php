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
    ?>
    <section>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Artist</th>
                    <th>Year</th>
                    <th>Genre</th>
                    <th>Fav</th>
                    <th>Detail</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($songs as $song) { ?>
                    <tr>
                        <td><?= truncateTitle25($song['title']) ?></td>
                        <td><?= $song['artist_name'] ?></td>
                        <td><?= $song['year'] ?></td>
                        <td><?= $song['genre_name'] ?></td>
                        <td><input type="submit" method="POST" <?= addToFav($song['song_id']) ?>>Fav</input></td>
                        <td><a href="./single_song.php?song_id=<?= $song['song_id'] ?>"><button>View</button></a></td>
                    </tr>
                <?php } ?>
            </tbody>
            <tfoot>

            </tfoot>
        </table>
        <?= backButton() ?>
    </section>
    <footer>
        <?= footer(); ?>
    </footer>

</html>