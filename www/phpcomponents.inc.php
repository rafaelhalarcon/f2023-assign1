<?php

function navBarHead($title)
{
    $link1 = './index.php';
    $link2 = './browse_all.php';
    $link3 = './search.php';
    $link4 = './aboutUs.php'; ?>

    <nav class="nav navbar-expand-lg navbar-light  bg-gradient fs-5 py-lg-3">
        <div class="container-fluid">
            <h1 class="navbar-brand"><a href="./index.php"><img src="../images/music.svg" width="100px"></a> | COMP3512 | Web Application Development II | Assignment 1 | <h3><?= $title ?></h1></h3>
            
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?=$link1 ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?=$link2 ?>">Browse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?=$link3 ?>">Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<?=$link4 ?>">About us</a>
                </li>
            </ul>
    </nav>
    </div>
<?php }

function footer()
{ ?>
    <p>&copy; | <?php echo date("Y"); ?> | Arthur Bakir and Rafael Hernandez Alarcon | </p>
    <a href="#" target="_blank"><i class="fab fa-twitter-square"></i></a>
    <a href="https://github.com/rafaelhalarcon/f2023-assign1" target="_blank"><i class="fab fa-github"></i></a>
    <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
<?php }

function backButton()
{
?> <button onclick="history.go(-1);"> Go Back </button>
<?php }

?>