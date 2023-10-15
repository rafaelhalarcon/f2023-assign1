<?php include './includes/configdb.inc.php';
include './includes/phpcomponents.inc.php';
include './includes/dbclasses.php'; ?>

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
            <h2 class="center"> Course: COMP3512 Web Application Development 2</h2>
        </div>
    </div>


    <div class="card">
        <div class="card-body">
            <h2 class="center">Technology Used</h2>
            <ul class="card-text">
                <li>Converting SQLite to MYSQL</li>
                <p>Initially, we exported and created a MYSQL dump file to work. But, we found that we needed to do everything with an SQLite because it runs serverless. After some struggling, we managed to correct the migration and connected successfully to the database file.</p>
                <li>VSCode</li>
                <p>As IDE we used Microsoft VSCode becuse it seamless integration with version control, and its live server capabilities.</p>
                <li>Bootstrap</li>
                <p>We used a CSS preprocessor to style our webpages with a congruent, cohesive design. Most of the recipes we used for bootstraping our pages were original with some inspiration from Material Design and the Official Bootstrap 5.0 documentation.</p>
                <li>GitHub</li>
                <p>For version control, we forked the assignment original nrepo and worked in our own setups commiting changes as often as we needed, and solved some merge conflicts.</p>
                <li>XAAMPP</li>
                <p>XAMPP is a free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB database, and interpreters for scripts written in the PHP and Perl programming languages.</p>
            </ul>
        </div>
    </div>

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


    <div class="card">
        <div class="card-body">
            <a href='https://github.com/rafaelhalarcon/f2023-assign1' target="_blank">
                <h2 class="center">GitHub Repository</h2>
            </a>
        </div>
    </div>


    <div class="mx-auto my-5">
        <?= backButton() ?>
    </div>
</body>
<footer>
    <?= footer(); ?>
</footer>

</html>