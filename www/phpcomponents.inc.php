<?php

function navBarHead($title, $link1, $link2, $link3, $link4)
{
    $link1 = 'index.php';
    $link2 = 'browse_search_results.php';
    $link3 = 'search.php';
    $link4 = ''; ?>
    <h1> | COMP3512 | Web Application Development II | Assignment 1</h1>
    <h1><?= $title ?></h1>
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



?>