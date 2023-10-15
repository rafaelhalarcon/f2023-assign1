<?php include './includes/configdb.inc.php';
include './includes/phpcomponents.inc.php';
include './includes/dbclasses.php';

try {
    $conn = DatabaseHelper::connect(DBCONNSTRING);
    // $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
    $songsCatalog = new SongsDB($conn);
    $songs = $songsCatalog->getAll();
} catch (Exception $e) {
    die($e->getMessage());
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
    <link href="./style/general.css" rel="stylesheet" />
    <link rel="icon" href="./images/favicon-32x32.png" type="image/png" sizes="32x32">
    <title>Song Detail</title>
</head>
<header>
    <?= navBarHead('Music browser') ?>
</header>

<body>
    <section>
        <div class="card g-3 bg-light bg-gradient">

            <table class="table table-primary table-striped">
                <thead>
                    <tr>
                        <th scope="col" class="text-center">Title</th>
                        <th scope="col" class="text-center">Artist</th>
                        <th scope="col" class="text-center">Year</th>
                        <th scope="col" class="text-center">Genre</th>
                        <th scope="col" class="text-center">Fav</th>
                        <th scope="col" class="text-center">Detail</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($songs as $song) { ?>
                        <tr scope="row" >
                            <td class="text-center"><?= truncateTitle25($song['title']) ?></td>
                            <td class="text-center"><?= $song['artist_name'] ?></td>
                            <td class="text-center"><?= $song['year'] ?></td>
                            <td class="text-center"><?= $song['genre_name'] ?></td>
                            <td class="text-center">
                                <a href="./addToFavourites.php?song_id=<?= $song['song_id'] ?>"><button class="btn btn-primary border m-1">+ Fav</button></a>
                            </td>
                            <td class="text-center">
                                <a href="./single_song.php?song_id=<?= $song['song_id'] ?>"><button class="btn btn-primary border m-1">View</button></a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    <tfoot>
                        
                        </tfoot>
                    </table>
                </div>
        <div class="mx-auto my-5" >

            <?= backButton() ?>
        </div>
    </section>
    <footer>
        <?= footer(); ?>
    </footer>

</html>