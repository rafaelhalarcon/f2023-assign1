<?php include './configdb.inc.php';
include './phpcomponents.inc.php';
include './dbclasses.php'; ?>

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
    <?= navBarHead('About us', '#', '#', '#', '#') ?>
</header>

<body>

    <h2>Technology Used</h2>
    <li>"Insert process of converting sqlite to MySQL"</li>
    <li>phpMyAdmin</li>
    <li>Bootstrap</li>
    </br>
    </br>

    <h2>Web Application Development 2</h2>
    </br>
    </br>

    <h2>Group Members:</h2>
    <a href='https://github.com/abaki016' target="_blank">
        <h3>Arthur Bakir</h3>
    </a>
    <a href='https://github.com/rafaelhalarcon' target="_blank">
        <h3>Rafael Hernandez Alarcon</h3>
    </a>
    </br>
    </br>

    <a href='https://github.com/rafaelhalarcon/f2023-assign1' target="_blank">
        <h3>GitHub Repository</h3>
    </a>

</body>
<footer>
    <?= footer(); ?>
</footer>

</html>