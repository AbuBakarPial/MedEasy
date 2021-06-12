<?php 

	require './../lib/Database.php';
	require './../helpers/Format.php';
	require './../helpers/Mail.php';

	spl_autoload_register(function ($class) {
      	include './../classes/' . $class . '.php';
  	});