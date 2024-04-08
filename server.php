<?php

include('./connection.php');

$step = $_POST['step'];
$req_field = [];
$error = [];
$url = false;
$total_step = 3;
$output =false;

$step1_fields = ['email', 'pass', 'cpass'];

$step2_fields = ['twitter', 'facebook', 'gplus'];

$step3_fields = ['fname', 'lname', 'phone', 'address'];

$base_url = 'http://localhost/multi-step_project/index.php?step=';

switch ($step) {

    case 1:

        $req_field = $step1_fields;
        
        break;

    case 2:

        $req_field = $step2_fields;
        

        break;

    case 3:

        $req_field = $step3_fields;

        break;

    default:

        $req_field = $step1_fields;

        break;
}

$_SESSION['step'.$step.'_data'] =$_POST;

foreach ($req_field as $key => $value) {


    if (!isset($_POST[$value]) || empty($_POST[$value])) {

        $error[] = $value . " is required ";
    }
} 

if(count($error) > 0) {    

    $_SESSION['step' . $step . '_error'] = $error;
    $url = $base_url . $step;

    

} else{
  
if($step != $total_step){

    $url =$base_url.$step+1;
  
} else{
 
    $step1 =$_SESSION['step1_data'];
    $step2 =$_SESSION['step2_data'];
    $step3 =$_SESSION['step3_data'];

  
    //step1...
    $email =$step1['email'];
    $password =$step1['pass'];
    
    //step2...
    $twitter =$step2['twitter'];
    $facebook =$step2['facebook'];
    $g_plus =$step2['gplus'];
    
    //step3...
    $f_name =$step3['fname'];
    $l_name =$step3['lname'];
    $phone =$step3['phone'];
    $address =$step3['address'];

    $query =" INSERT INTO profile (`email`, `password`, `twitter`, `facebook`, `google_plus`, `first_name`, `last_name`, `phone`, `address` ) VALUES ('$email', '$password', '$twitter', '$facebook', '$g_plus', '$f_name', '$l_name', '$phone', '$address')";
    $result =mysqli_query($connection, $query);
    $login_id =mysqli_insert_id($connection);
    
    $_SESSION['login_id'] =$login_id;
    
    $_SESSION['success'] ='form submitted successfully';
    
    $url ="http://localhost/multi-step_project/home.php";

}

}
   
header('location:'.$url);
exit;

?>
