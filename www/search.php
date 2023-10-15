<?php include './includes/configdb.inc.php';
include './includes/phpcomponents.inc.php';
include './includes/dbclasses.php';

try {
    $conn = DatabaseHelper::connect(DBCONNSTRING);
    // $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
    $songsCatalog = new SongsDB($conn);
    $songs2 = $songsCatalog->getArtistAll();
    $songs3 = $songsCatalog->getGenreAll();
} catch (Exception $e) {
    die($e->getMessage());
} ?>


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
    <title>Search</title>
</head>

<header>
    <?= navBarHead('Search') ?>
</header>

<body>
    <div class="mx-auto" style="width: 60vh">



        <div class="container-fluid py-1">
            <div class="col px-md-5 g-5">
                <div class="card g-5 bg-light bg-gradient">
                    <form action="./browse_search_results.php" method="GET" id="form">
                        <div class="form-group p-5">
                            <div class="form-outline">
                                <input type="radio" name="searchField" value="title" required>
                                <label class="control-label " for="title">Title</label>
                                <input class="form-control border mb-3" id="title" type="text" name="title">
                            </div>
                            <div class="form-outline mb-4 g-3">
                                <input type="radio" name="searchField" value="artist" required>
                                <label class="control-label" for="artist">Artist</label>
                                <select class="custom-select mb-3" id="artist" name="artist_name">
                                    <option value="0">Select an artist</option>
                                    <?php foreach ($songs2 as $song2) { ?>
                                        <option value="<?= $song2['artist_name'] ?>"><?= $song2['artist_name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-outline ">
                                <input type="radio" name="searchField" value="genre_name" required>
                                <label class="control-label" for="genre_name">Genre</label>
                                <select class="custom-select mb-3" id="genre" name="genre_name">
                                    <option value="0">Select a genre</option>
                                    <?php foreach ($songs3 as $song3) { ?>
                                        <option value="<?= $song3['genre_name'] ?>"><?= $song3['genre_name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <input type="radio" name="searchField" id="date" value="date" required>
                            <label for="date">Select a range of years</label>
                            <div class="row m">
                                <div class="col-sm">
                                    <div class="form-outline">
                                        <label class="control-label" for="date1">From</label>
                                        <input class="form-control border" id="date1" type="number" min="2016" max="2019" name="date1">
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <div class="form-outline">
                                        <label class="control-label" for="date2">To</label>
                                        <input class="form-control border" id="date2" type="number" min="2016" max="2019" name="date2">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mx-auto" style=" width:400px">
                            <div class="p-5 ">

                                <button class="btn btn-primary border m-1" type="submit" value="Submit" form_id="form">Submit</button>
                                <?= backButton(); ?>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>