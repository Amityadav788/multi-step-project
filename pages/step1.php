<?php

include('./connection.php');

if(isset($_SESSION['login_id'])){

  header("location:http://localhost/multi-step_project/home.php");
  exit;

}


$step1_error = false;
$old_data_step1 =[];

if(isset($_SESSION['step1_error'])) {

  $step1_error = $_SESSION['step1_error']; 
  unset($_SESSION['step1_error']);

}

if(isset($_SESSION['step1_data'])){

  $old_data_step1 =  $_SESSION['step1_data'];
  unset($_SESSION['step1_data']);

}



?>


<?php if($step1_error) { ?>
  <div  style="background-color:orange" class="alert alert-danger text-center">
  <?php if (is_array($step1_error)){ ?>
      <?php foreach($step1_error as $key => $value) { ?>
        <p><?php echo $value; ?></p>
      <?php } ?>
    
  <?php } else { ?>
      <p><?php echo $step1_error; ?></p>
  <?php } ?>
  </div>
<?php } ?>


<fieldset>

  <h2 class="fs-title">Create your account</h2>
  <h3 class="fs-subtitle"></h3>
  <input type="text" name="email" placeholder="Email" value="<?php echo (isset($old_data_step1)) && isset($old_data_step1['email']) ? $old_data_step1['email']: '' ?>"  />
  <input type="password" name="pass" placeholder="Password" value="<?php  echo (isset($old_data_step1)) && isset($old_data_step1['pass']) ? $old_data_step1['pass']: '' ?>"/>
  <input type="password" name="cpass" placeholder="Confirm Password" value="<?php  echo  (isset($old_data_step1)) && isset($old_data_step1['cpass']) ? $old_data_step1['cpass']: '' ?>" />
  <input type="submit" name="next" class="action-button" value="Next" />
  <input type="hidden" id="custId" name="step" value="1" />

</fieldset>
