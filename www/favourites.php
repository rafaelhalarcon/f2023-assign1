<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php';
session_start();

if (!isset($_SESSION['favourites'])) {
    $_SESSION['favourites'] = [];
}

$favorites = $_SESSION['favourites'];

if (isset($_POST['removeFavorite']) && isset($_POST['removeFavorite'])) {
    $song_id_to_remove = $_POST['removeFavorite'];
    $index = array_search($song_id_to_remove, $favorites);

    if ($index !== false) {
        unset($favorites[$index]);
        $favorites = array_values($favorites);
        $_SESSION['favourites'] = $favorites;
    }
}

if (isset($_POST['clearFavorites'])) {
    $_SESSION['favourites'] = [];
}

?>



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
    <link rel="icon"  href="./images/favicon-32x32.png" type="image/png" sizes="32x32">
    <title>Favourites</title>
</head>
<header>
    <?= navBarHead('Favourites') ?>
</header>

<body>
    <section>
        <h2>Favourite Songs</h2>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Artist</th>
                    <th>Year</th>
                    <th>Genre</th>
                    <th>Detail</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($favorites as $fav) { ?>
                    <tr>
                        <td><?= truncateTitle25($fav['title']) ?></td>
                        <td><?= $fav['artist_name'] ?></td>
                        <td><?= $fav['year'] ?></td>
                        <td><?= $fav['genre_name'] ?></td>
                        <td><input type="submit" method="POST" <?= addToFav($fav['song_id']) ?>>Fav</input></td>
                        <td><a href="./single_song.php?song_id=<?= $fav['song_id'] ?>"><button>View</button></a></td>
                    </tr>
                <?php }
                ?>
            </tbody>
        </table>
        <form method="post">
            <input type="submit" name="clearFavorites" value="Remove All">
        </form>
        <?= backButton() ?>
    </section>

</body>
<footer>
    <?= footer(); ?>
</footer>

</html>