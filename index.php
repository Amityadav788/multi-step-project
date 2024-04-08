<?php 

include('./connection.php');

//$step =isset($_GET['step']) ? $_GET['step'] : false ; 

$step =false;

if(isset($_GET['step'])){

  $step =$_GET['step'];
  
}


?>


<!DOCTYPE html>
<html>

  <head>
    <?php 
    include('./partials/head.php');
    ?>
  </head>

  <body>

<form id="msform" action="./server.php" method="post">

   <?php 

   include('./partials/step_header.php'); 

  switch($step):

 case 1: ?>
 <div>
  <?php include('./pages/step1.php'); ?>
 </div>

  <?php break;
  
   case 2: ?>
   <div>
  <?php include('./pages/step2.php'); ?>
   </div>
  <?php break; 
 

   case 3: ?>
   <div>
  <?php include('./pages/step3.php'); ?>
   </div>
  <?php break;  

    default: 

    ?>
    <div>
  <?php include('./pages/step1.php'); ?>
   </div>
     
    <?php endswitch; ?>

  
</form>

<?php include('./partials/footer-script.php'); ?>

  </body>
</html>