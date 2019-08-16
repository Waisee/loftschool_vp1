<?php

require_once 'db.php';
require_once 'functions.php';

$name = $_GET['name'];
$phone = $_GET['phone'];
$email = $_GET['email'];
$street = $_GET['street'];
$home = $_GET['home'];
$appt = $_GET['appt'];
$floor = $_GET['floor'];
$comment = $_GET['comment'];
$payment = $_GET['payment'];

if($_GET['callback'] == 'on'){
    $callback = "Don't callback";
}else{
    $callback = 'Callback';
}

if(!$user = getUserByEmail($email, $pdo)){
    if(registerUser($name, $email, $phone, $pdo)){
        $user = getUserByEmail($email, $pdo);
    }
}

$order = getOrderByUserId($user['id'], $pdo);

$count = countOrders($user['id'], $pdo);

if(makeAnOrder($user['id'], $street, $home, $appt, $floor, $comment, $payment, $callback, $pdo)) {


    sendEmail($order, $user, $count);

    echo "Заказ успешно оформлен";

}else{
    echo "Ошибка. Введите корректные данные";
}
