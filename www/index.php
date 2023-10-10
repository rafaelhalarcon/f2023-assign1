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

    <h2>Top Artists based on the Number of Songs</h2>
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
            echo "<li>" . $row['title'] . $row['artist_name'] . "</li>";
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