<?php 

include('./connection.php');

if(isset($_SESSION['login_id'])){

  header("location:http://localhost/multi-step_project/home.php");
  exit;

}


$step2_error = false;
$url =false;
$step =$_GET['step'];
$old_data_step2 =[];

$base_url ="http://localhost/multi-step_project/index.php?step=";


if(!isset($_SESSION['step1_data']) || empty($_SESSION['step1_data'])){
 
  header('location:'.$base_url.$step-1);
  exit;
  
}


if(isset($_SESSION['step2_error'])){

  $step2_error =$_SESSION['step2_error'];
  unset($_SESSION['step2_error']);

}

if(isset($_SESSION['step2_data'])){

  $old_data_step2 =$_SESSION['step2_data'];
  unset($_SESSION['step2_data']);
  
}

?>


<?php if($step2_error) {  ?> 
  <div style="background-color:orange" class="alert alert-danger text-center">
    <?php if (is_array($step2_error) == true){ ?>
      <?php foreach ($step2_error as $key => $value) { ?>
        <p><?php echo $value; ?></p>
      <?php } ?>
      
    <?php } else { ?>
      <p><?php echo $step2_error; ?></p>
      <?php } ?>
  </div>
<?php } ?>


<fieldset>


    <h2 class="fs-title">Social Profiles</h2>
    <h3 class="fs-subtitle">Your presence on the social network</h3>
    <input type="text" name="twitter" placeholder="Twitter" value="<?php echo (isset($old_data_step2)) && isset($old_data_step2['twitter']) ? $old_data_step2['twitter']: '' ?>" />
    <input type="text" name="facebook" placeholder="Facebook" value="<?php echo (isset($old_data_step2)) && isset($old_data_step2['facebook']) ? $old_data_step2['facebook']: '' ?>" />
    <input type="text" name="gplus" placeholder="Google Plus" value="<?php echo (isset($old_data_step2)) && isset($old_data_step2['gplus']) ? $old_data_step2['gplus']: '' ?>" />
    <?php if($step > 1 ){ ?>

    <a type="button" name="previous" class="action-button" value="Previous" href="<?php echo $base_url.$step-1; ?>">Previous</a> 

    <?php } ?>
    <input type="submit" name="next" class=" action-button" value="Next" />
    <input type="hidden" id="custId" name="step" value="2"  />

  </fieldset>