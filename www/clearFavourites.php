<?php
session_start();

if (isset($_SESSION['fav'])) {
    unset($_SESSION['fav']);
}

header('Location: favourites.php');
exit;
