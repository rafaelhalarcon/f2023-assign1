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
    <link rel="icon" type="image/x-icon" href="">
    <title>Music browser</title>
</head>
<header>
    <?= navBarHead('Modern Music Player', '#', '#', '#', '#') ?>
</header>

<body>
    <h2>Top Genre Based on the Number of Songs</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT g.genre_name, COUNT(*) as song_count
            FROM genres g
            INNER JOIN songs s ON g.genre_id = s.genre_id
            GROUP BY g.genre_name
            ORDER BY song_count DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>{$row['genre_name']} ({$row['song_count']} songs)</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>Top Artists Based on the Number of Songs</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT a.artist_name, COUNT(*) as song_count
            FROM artists a
            INNER JOIN songs s ON a.artist_id = s.artist_id
            GROUP BY a.artist_name
            ORDER BY song_count DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>{$row['artist_name']} ({$row['song_count']} songs)</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>Most Popular Songs Sorted by Popularity</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name, s.song_id
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            ORDER BY s.popularity DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>" . $row['title'] . " - " . $row['artist_name'] . "</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>One-Hit Wonders</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            WHERE a.artist_id IN (
                SELECT artist_id
                FROM songs
                GROUP BY artist_id
                HAVING COUNT(*) = 1
            )
            ORDER BY s.popularity DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>" . $row['artist_name'] . " - " . $row['title'] . "</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>Longest Acoustic Songs</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            WHERE s.acousticness > 40
            ORDER BY s.duration DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>" . $row['title'] . " - " . $row['artist_name'] . "</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>At the Club</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name, s.bpm
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            WHERE (s.danceability * 1.6 + s.energy * 1.4) > 80
            ORDER BY (s.danceability * 1.6 + s.energy * 1.4) DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>" . $row['title'] . " - " . $row['artist_name'] . " [BPM: " . $row['bpm'] . "]</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>Running Songs</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name, s.bpm
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            WHERE (s.bpm >= 120 AND s.bpm <= 125)
            ORDER BY (s.energy * 1.3 + s.valence * 1.6) DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            echo "<li>" . $row['title'] . " - " . $row['artist_name'] . " [BPM: " . $row['bpm'] . "]</li>";
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
    <div></div>

    <h2>Studying Songs</h2>
    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name, s.bpm, s.song_id
            FROM songs s
            INNER JOIN artists a ON s.artist_id = a.artist_id
            WHERE (s.bpm >= 100 AND s.bpm <= 115) AND (s.speechiness >= 1 AND s.speechiness <= 20)
            ORDER BY (s.acousticness * 0.8 + (100 - s.speechiness) + (100 - s.valence)) DESC
            LIMIT 10;";
        $result = $pdo->query($sql);
        echo "<ul>";
        while ($row = $result->fetch()) {
            // echo "<li>" . $row['title'] . " - " . $row['artist_name'] . " [BPM: " . $row['bpm'] . "]</li>";
            ?><li><a href="single_song.php?song_id=<?=$row['song_id']?>"><?=$row['title'] . " - " . $row['artist_name'] . " [BPM: " . $row['bpm'] . "]"?> </a></li> <?php 
        }
        echo "</ul>";
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>

<?php  ?>