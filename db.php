<?php
try{
    $pdo =  new PDO('mysql:host=localhost; dbname=db_burger', 'root', 'root');
}
catch (PDOException $e){
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
