<?php include('./configdb.inc.php'); ?>

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
    <title>Music browser</title>
</head>
</head>
<body>
    <h1>Is this working</h1>

    <?php
    try {
        $pdo = new PDO(DBCONNSTRING, DBUSER, DBPASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT * FROM genres";
        $result = $pdo->query($sql);
        //loop through the data
        while ($row = $result->fetch()) {
            echo $row['genre_id'] . " - " . $row['genre_name'] . "<br>";
        }
        $pdo = null;
    } catch (PDOException $e) {
        die($e->getMessage());
        echo "not connected";
    }
    ?>
</body>
</html>