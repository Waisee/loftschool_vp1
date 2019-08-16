<?php

require_once 'init.php';



$users = getAllUsers($pdo);
$orders = getAllOrders($pdo);

//echo 'Пользователи:<br>';
//foreach ($users as $user){
//    echo 'id:' . $user['id'] . ' | email: ' . $user['email'] . ' | телефон: ' . $user['phone'] . '<br><br>';
//}
//
//echo 'Заказы:<br>';
//echo 'id | user_id | street | home | appt | floor | comment | payment | callback<br><hr>';
//foreach ($orders as $order){
//    echo implode(' | ', $order);
//    echo '<br>';
//}

$path = __DIR__ . '/templates/';
$loader = new \Twig\Loader\FilesystemLoader($path);
$twig = new \Twig\Environment($loader);

echo $twig->render('admin.twig', [
    'users' => $users,
    'orders' => $orders,
    ]);