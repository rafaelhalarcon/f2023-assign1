<?php include './configdb.inc.php';
include './phpcomponents.inc.php'; ?>

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
        <link rel="icon" type="image/x-icon" href="">
        <title>Song Detail</title>
    </head>
</head>

<body>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.song_id, s.title, s.artist_id, s.genre_id, s.year, s.bpm, s.energy, s.danceability, s.loudness, s.liveness, s.valence , SUBSTR(SEC_TO_TIME(s.duration),4,5) AS duration, s.acousticness, s.speechiness, s.popularity, a.artist_name, a.artist_type_id, g.genre_name, t.type_name
        FROM songs s
           JOIN artists a ON s.artist_id=a.artist_id
           JOIN genres g ON s.genre_id=g.genre_id
           JOIN types t ON a.artist_type_id=t.type_id;";
        $result = $pdo->query($sql);

        //loop through the data
        $songs = $row = $result->fetch();
        $pdo = null;
        // print "<pre>";
        // print_r($row);
        // print "</pre>";
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <section>
        <h2 style="text-transform: capitalize;">SONG: <?= $row['title'] ?></h2>
        <fieldset>
            <legend>Main info</legend>
            <p><strong>Song name &nbsp;</strong><?= $row['title'] ?></p>
            <p><strong>Artist name&nbsp;</strong><?= $row['artist_name'] ?></p>
            <p><strong>Artist type &nbsp;</strong><?= $row['type_name'] ?></p>
            <p><strong>Genre &nbsp;</strong><?= $row['genre_name'] ?></p>
            <p><strong>Year &nbsp;</strong><?= $row['year'] ?></p>
            <p><strong>Duration &nbsp;</strong><?= $row['duration'] ?></p>
        </fieldset>
        <fieldset>
            <legend>Statistics</legend>
            <p><strong>BPM &nbsp;</strong><?= $row['bpm'] ?></p>
            <p><strong>Energy&nbsp;</strong><?= $row['energy'] ?></p>
            <p><strong>Danceability &nbsp;</strong><?= $row['danceability'] ?></p>
            <p><strong>Loudness &nbsp;</strong><?= $row['loudness'] ?></p>
            <p><strong>Liveness &nbsp;</strong><?= $row['liveness'] ?></p>
            <p><strong>Valence &nbsp;</strong><?= $row['valence'] ?></p>
            <p><strong>Acousticness &nbsp;</strong><?= $row['acousticness'] ?></p>
            <p><strong>Speechiness &nbsp;</strong><?= $row['speechiness'] ?></p>
            <p><strong>Popularity &nbsp;</strong><?= $row['popularity'] ?></p>
        </fieldset>

    </section>



</body>

</html>