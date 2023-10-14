<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./style/general.css" rel="stylesheet" />
    <title>Document</title>
</head>


<?php

function navBarHead($title)
{
    $link1 = './index.php';
    $link2 = './browse_all.php';
    $link3 = './favourites.php';
    $link4 = './search.php';
    $link5 = './aboutUs.php'; ?>

    <nav class="nav text-light navbar-expand-lg  text-center fs-5 py-lg-3">
        <div class="container-fluid">
            <h1 class="navbar-brand"><a href="./index.php"><img src="./images/music.png" width="100px"></a> &nbsp; COMP3512 | Web Application Development II | Assignment 1 <h3><?= $title ?></h1>
            </h3>

            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?= $link1 ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?= $link2 ?>">Browse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?= $link3 ?>">Favourites</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?= $link4 ?>">Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?= $link5 ?>">About us</a>
                </li>
            </ul>
        </div>
    </nav>
    <hr style="position: relative; top: -30px; left: 10px; border: none; height: .5rem;  background: antiquewhite; width:98%;" />
<?php }

function footer()
{ ?>
    <hr style="position: relative; top: -20px; left:10px; border: none; height: .5rem;  background: antiquewhite; width:98%;" />
    <div class="container p-4 pb-0 text-center">
        <p class="text-light">&copy; | <?php echo date("Y"); ?> | Arthur Bakir and Rafael Hernandez Alarcon | </p>
        <a class="btn btn-outline-light btn-floating m-1" href="#" target="_blank"><i class="fab fa-twitter-square"></i></a>
        <a class="btn btn-outline-light btn-floating m-1" href="https://github.com/rafaelhalarcon/f2023-assign1" target="_blank"><i class="fab fa-github"></i></a>
        <a class="btn btn-outline-light btn-floating m-1" href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
    </div>
<?php }

function backButton()
{
?> <button class="btn btn-primary border m-1" onclick="history.go(-1);"> Go Back </button>
<?php }

?>