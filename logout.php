<?php
session_start();
setcookie("uye",null,strtotime('-30 days'));
unset($_SESSION['uye']);
header('Location: login.php');
?>
