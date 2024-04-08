<?php 

include('./connection.php');


if(isset($_SESSION['login_id'])){

  header("location:http://localhost/multi-step_project/home.php");
  exit;

}

$step3_error = false;
$step =$_GET['step'];
$url =false;
$old_data_step3 =[];
$base_url ="http://localhost/multi-step_project/index.php?step=";

if(!isset($_SESSION['step2_data']) || empty($_SESSION['step2_data'])){
 
  header('location:'.$base_url.$step-1);
  exit;
  
}

if(isset($_SESSION['step3_error'])){

  $step3_error =$_SESSION['step3_error'];
  unset($_SESSION['step3_error']);

}
 
if(isset($_SESSION['step3_data'])){

$old_data_step3 =$_SESSION['step3_data'];
unset($_SESSION['step3_data']);

}



?>

<?php if ($step3_error) { ?> 
  <div style="background-color:orange" class="alert alert-danger text-center">
    <?php if(is_array($step3_error) == true) { ?>
      <?php foreach ($step3_error as $key => $value) { ?>
        <p><?php echo $value; ?></p>
      <?php } ?>
  
    <?php } else { ?>
      <p><?php echo $step3_error; ?></p>
    <?php } ?>
    </div>
<?php } ?>


<fieldset>


    <h2 class="fs-title">Personal Details</h2>
    <h3 class="fs-subtitle">We will never sell it</h3>
    <input type="text" name="fname" placeholder="First Name" value="<?php echo (isset($old_data_step3)) && isset($old_data_step3['fname']) ? $old_data_step3['fname']: '' ?>"/>
    <input type="text" name="lname" placeholder="Last Name" value="<?php echo (isset($old_data_step3)) && isset($old_data_step3['lname']) ? $old_data_step3['lname']: '' ?>"/>
    <input type="text" name="phone" placeholder="Phone" value="<?php echo (isset($old_data_step3)) && isset($old_data_step3['phone']) ? $old_data_step3['phone']: '' ?>" />
    <textarea name="address" placeholder="Address" value="<?php echo (isset($old_data_step3)) && isset($old_data_step3['address']) ? $old_data_step3['address']: '' ?>"><?php echo (isset($old_data_step3)) && isset($old_data_step3['address']) ? $old_data_step3['address']: '' ?></textarea>
    <?php if($step>1){ ?>

    <a type="button" name="previous" class="action-button" value="Previous" href="<?php echo $base_url.$step-1; ?>">Previous</a>

    <?php } ?>
    <input type="submit" name="submit" class="action-button" value="Next" />
    <input type="hidden" id="custId" name="step" value="3"  />
  </fieldset>