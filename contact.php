<?php
//Contact us script. Very Simple. No validation as done client side with jQuery

//Grab our post vars
$name = $_POST['name'];
$email = $_POST['email'];
$tel = $_POST['tel'];
$msg = $_POST['msg'];

//Lets build up our message
$message = 'Name: <strong>' . $name . '</strong><br />';
$message.= 'eMail: ' . $email . '<br />';
if ($tel != null) {
    $message.= 'Telephone Number: ' . $tel . '<br />';
}
$message.= '<hr />';
$message.= 'Message:<br />"' . $msg .'"';

$to      = 'info@elmats.co.uk';
$subject = 'eMail from ELM website';
$message = $message;

$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers .= 'From: ' . $email . "\r\n";
$headers .= 'Reply-To: ' . $email . "\r\n";

mail($to, $subject, $message, $headers);

return "SUCCESS";
?>