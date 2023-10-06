<?php include('./configdb.inc.php');
include('./phpcomponents.inc.php') ?>

<!DOCTYPE html>
<html lang="en">

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
        <title>Music browser</title>
    </head>
<header>
    <?=navBarHead('Modern Music Player', '#', '#', '#', '#')?>
</header>

<body>
    <h1>Is this working</h1>

    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT s.title, a.artist_name FROM songs s join artists a using (artist_id);";
        $result = $pdo->query($sql);
        //loop through the data
        while ($row = $result->fetch()) {
            echo $row['title'] . " - " . $row['artist_name'] . "<br>";
        }
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
</body>
<footer>
    <?=footer(); ?>
</footer>

</html>