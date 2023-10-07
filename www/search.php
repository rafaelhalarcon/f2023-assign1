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
        <title>Music browser</title>
    </head>
</head>

<header>
    <?= navBarHead('Modern Music Player', '#', '#', '#', '#') ?>
</header>
<body>
    <form action="./browse_search_results.php" method="GET" id="form">
        <fieldset>
            <input type="radio" name="searchField" id="title">
            <label for="title">Title</label>
            <input id="title" type="text">
            <input type="radio" name="searchField" id="artist">
            <label for="artist">Artist</label>
            <input id="artist" type="select">
            <input type="radio" name="searchField" id="genre">
            <label for="genre">Genre</label>
            <input id="genre" type="Select">
            <fieldset>
                <legend>Range of years</legend>
                <input type="radio" name="searchField" id="date">
                <label for="date1">From</label>
                <input id="date1" type="number" min="2016" max="2019">
                <label for="date2">To</label>
                <input id="date2" type="number" min="2016" max="2019">
            </fieldset>
        </fieldset>
        <input type="submit" value="Submit" form_id="form"></input>


    </form>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>