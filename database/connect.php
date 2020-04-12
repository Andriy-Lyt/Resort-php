<?php
$username = 'root';
$password = '';
$dbname = 'resort';
$dsn = 'mysql:host=localhost;dbname=' . $dbname;

//get the connection
$dbcon = new PDO($dsn, $username, $password);


