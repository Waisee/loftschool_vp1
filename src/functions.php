<?php

function registerUser($name, $email, $phone, $pdo)
{
    $sql = "INSERT INTO `users` (`name`, email, phone) VALUES (:name, :email, :phone);";
    $query = $pdo->prepare($sql);

    $query->bindParam(':name', $name);
    $query->bindParam(':email', $email);
    $query->bindParam(':phone', $phone);

    return $query->execute();

}

function getUserByEmail($email, $pdo)
{
    $query = $pdo->prepare("SELECT * FROM users WHERE email = :email");
    $query->execute(['email' => $email]);
    $user = $query->fetch(PDO::FETCH_ASSOC);
    return $user;
}

function getAllUsers($pdo)
{
    $query = $pdo->query("SELECT * FROM `users`");
    $query->execute();
    $users = $query->fetchAll(PDO::FETCH_ASSOC);

    return $users;
}

function getAllOrders($pdo)
{
    $query = $pdo->query("SELECT * FROM `orders`");
    $query->execute();
    $orders = $query->fetchAll(PDO::FETCH_ASSOC);

    return $orders;
}

function makeAnOrder($user_id, $street, $home, $appt, $floor, $comment, $payment, $callback, $pdo)
{

    $sql = "INSERT INTO `orders` (user_id, street, home, appt, floor, comment, payment, callback) VALUES (:user_id, :street, 
            :home, :appt, :floor, :comment, :payment, :callback);";
    $query = $pdo->prepare($sql);

    $query->bindParam(':user_id', $user_id);
    $query->bindParam(':street', $street);
    $query->bindParam(':home', $home);
    $query->bindParam(':appt', $appt);
    $query->bindParam(':floor', $floor);
    $query->bindParam(':comment', $comment);
    $query->bindParam(':payment', $payment);
    $query->bindParam(':callback', $callback);

    return $query->execute();

}
function getOrderByUserId($user_id, $pdo)
{
    $query = $pdo->prepare("SELECT * FROM orders WHERE user_id = :user_id");
    $query->execute(['user_id' => $user_id]);
    $order = $query->fetch(PDO::FETCH_ASSOC);
    return $order;
}

function countOrders($user_id, $pdo)
{
    $sql = "SELECT * FROM `orders` WHERE user_id = :user_id";
    $query = $pdo->prepare($sql);
    $query->bindParam(':user_id', $user_id);
    $query->execute();
    return $count = count($query->fetchAll());
}

function sendEmail(array $order, array $user, int $count)
{

    if($count === 1){
        $amount = 'Спасибо - это Ваш первый заказ';
    }else{
        $amount = "Спасибо! Это уже $count заказ";
    }
    $street = $order['street'];
    $home = $order['home'];
    $appt = $order['appt'];
    $order_id = $order['id'];
    $user_email = $user['email'];
    $message = "Ваш заказ DarkBeefBurger за 500 рублей, 1 шт. будет доставлен по адресу: улица:$street, дом: $home, кв.: $appt, $amount";

    $transport = (new Swift_SmtpTransport('smtp.mail.ru', 465, 'ssl'))
        ->setUsername('examle.waisee@bk.ru')
        ->setPassword('loftschool123')
    ;
    $mailer = new Swift_Mailer($transport);

    $email = (new Swift_Message())
        ->setSubject("$order_id")
        ->setFrom(['examle.waisee@bk.ru' => 'examle.waisee@bk.ru'])
        ->setTo("$user_email")
        ->setBody("$message")
    ;
    return $result = $mailer->send($email);
}
