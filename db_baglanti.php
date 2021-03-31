<?php
session_start();
date_default_timezone_set('Europe/Istanbul');
$db = @new mysqli('localhost', 'root', '', 'proje');
if ($db->connect_errno){
  die('Bağlantı Hatası:' . $db->connect_error);
}
/* Tablo veri karakter yapımız utf8 dir, bunu bildirelim */
$db->set_charset("utf8");