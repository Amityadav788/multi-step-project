<?php 

include('./connection.php');

if(!isset($_SESSION['login_id'])){

  header("location:http://localhost/multi-step_project/index.php?step=1");
  exit;

}


$success =false;

if(isset($_SESSION['success']) && !empty($_SESSION['success'])){

    $success =$_SESSION['success'];
    unset($_SESSION['success']);

}




?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<?php if($success){ ?>
    <div class="alert alert-success text-center">
        <p><?php echo $success; ?></p>
    </div>
<?php } ?>

<a type="button" class="btn btn-submit" href="http://localhost/multi-step_project/logout.php">Logout</a>

<div class="container">
  <h2>Welcome to home</h2>
  <form action="./index.php">
    <div class="form-group">
      


    </div>
  </form>
</div>

</body>
</html>
