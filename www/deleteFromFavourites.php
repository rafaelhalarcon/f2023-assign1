<?php 
session_start();

foreach ($_SESSION['fav'] as $favourites) {
    if (($favToDelete = array_search($_GET['song_id'], $_SESSION['fav'])) === true) {
        unset($favToDelete);
        $_SESSION['fav'] = $favourite;

    }

}
header ("location: " . $_SERVER['HTTP_REFERER']);
exit;
?>