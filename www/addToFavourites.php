<?php 
session_start();
ob_start();

if(!isset($_SESSION['fav'])) {
    $_SESSION['fav'] = [];
    
}

$fav = $_SESSION['fav'];

if (isset($_GET['song_id']) && !empty($_GET['song_id'])){
}
$fav[] = $_GET['song_id'];
?><script>console.log('Got the id ' )" . $_GET['song_id'] . ";</script><?php ;


$_SESSION['fav'] = $fav;

header ("location: " . $_SERVER['HTTP_REFERER']);
exit;
?>
