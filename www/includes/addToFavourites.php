<?php 
session_start();
ob_start();

$file = '/var/www/html/test.log';

if(!isset($_SESSION['fav'])) {
    $_SESSION['fav'] = [];
    
}

$fav = $_SESSION['fav'];

if (isset($_GET['song_id']) && !empty($_GET['song_id'])){
}
$fav[] = $_GET['song_id'];



$_SESSION['fav'] = $fav;

header ("location: " . "./favourites.php");
exit;
?>

