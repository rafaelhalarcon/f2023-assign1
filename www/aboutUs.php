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
    <link href="./style/general.css" rel="stylesheet" />
    <link rel="icon" href="./images/favicon-32x32.png" type="image/png" sizes="32x32">
    <title>Music browser</title>
</head>
<header>
    <?= navBarHead('About us') ?>
</header>

<body>

    <div class="card">
        <div class="card-body">
            <h2 class="center">Technology Used</h2>
            <ul class="card-text">
                <li>"Insert process of converting sqlite to MySQL"</li>
                <li>phpMyAdmin</li>
                <li>Bootstrap</li>
            </ul>
        </div>
    </div>
    </br>
    </br>

    <div class="card">
        <div class="card-body">
            <h2 class="center">Web Application Development 2</h2>
        </div>
    </div>
    </br>
    </br>

    <div class="card">
        <div class="card-body">
            <h2 class="center">Group Members</h2>
            <ul class="card-text">
                <a href='https://github.com/abaki016' target="_blank">
                    <h3 class="center">Arthur Bakir</h3>
                </a>
                <a href='https://github.com/rafaelhalarcon' target="_blank">
                    <h3 class="center">Rafael Hernandez Alarcon</h3>
                </a>
            </ul>
        </div>
    </div>
    </br>
    </br>

    <div class="card">
        <div class="card-body">
            <a href='https://github.com/rafaelhalarcon/f2023-assign1' target="_blank">
                <h2 class="center">GitHub Repository</h2>
            </a>
        </div>
    </div>
    </br>
    </br>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>