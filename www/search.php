<?php include './configdb.inc.php';
include './phpcomponents.inc.php'; ?>


<!DOCTYPE html>
<html lang="en">

<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Arthur Bakir and Rafael Hernandez Alarcon" />
        <meta name="keywords" content="Music BPM Energy danceability acoustic" />
        <meta name="description" content="WEBII assignment 1 music browser" />
        <link href="./style/reset.css" rel="stylesheet"/>
         <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="">
    <title>Search</title>
</head>

<header>
    <?= navBarHead('Modern Music Player', '#', '#', '#', '#') ?>
</header>
<body>
    <form action="./browse_search_results.php" method="GET" id="form">
        <fieldset>
            <input type="radio" name="searchField" value="title" required>
            <label for="title">Title</label>
            <input id="title" type="text" name="title">
            <input type="radio" name="searchField" value="artist" required>
            <label for="artist">Artist</label>
            <input id="artist" type="select" name="artist">
            <input type="radio" name="searchField" value="genre" required>
            <label for="genre">Genre</label>
            <input id="genre" type="Select" name="genre">
            <fieldset>
                <legend>Range of years</legend>
                <input type="radio" name="searchField" value="date" required>
                <label for="date1">From</label>
                <input id="date1" type="number" min="2016" max="2019" name="date1">
                <label for="date2">To</label>
                <input id="date2" type="number" min="2016" max="2019" name="date2">
            </fieldset>
        </fieldset>
        <input type="submit" value="Submit" form_id="form"></input>


    </form>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>