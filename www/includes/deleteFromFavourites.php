<?php
session_start();

if (isset($_GET['song_id'])) {
    $song_id_to_delete = $_GET['song_id'];

    if (($index = array_search($song_id_to_delete, $_SESSION['fav'])) !== false) {
        unset($_SESSION['fav'][$index]);
        $_SESSION['fav'] = array_values($_SESSION['fav']);
    }
}

header('Location: ' . $_SERVER['HTTP_REFERER']);
exit;
