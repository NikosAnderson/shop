<?php
require_once 'autoload.conf.php';

setlocale(LC_TIME, 'fr_FR', 'fra');

$current_page = basename($_SERVER['PHP_SELF']);

$pages = array(
	'#about' => 'About',
    '#services' => 'Services',
    'contact.php' => 'Contact',
    '#register' => 'Register',
);