<?php

function navBarHead($title)
{
    $link1 = 'index.php';
    $link2 = 'browse_all.php';
    $link3 = 'search.php';
    $link4 = 'aboutUs.php'; ?>
    <h2> | COMP3512 | Web Application Development II | Assignment 1</h2>
    <h2><?= $title ?></h2>
    <nav>
        <a href="<?= $link1 ?>">Home</a>
        <a href="<?= $link2 ?>">Browse</a>
        <a href="<?= $link3 ?>">Search</a>
        <a href="<?= $link4 ?>">About us</a>
    </nav>
<?php }

function footer()
{ ?>
    <p>&copy; | <?php echo date("Y"); ?> | Arthur Bakir and Rafael Hernandez Alarcon | </p>
    <a href="#" target="_blank"><i class="fab fa-twitter-square"></i></a>
    <a href="#" target="_blank"><i class="fab fa-github"></i></a>
    <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
<?php }

function backButton() {
    ?> <button onclick="history.go(-1);"> Go Back </button> 
<?php }

?>