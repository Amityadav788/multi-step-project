<?php 

session_start();
session_destroy();

header("location:http://localhost/multi-step_project/index.php?step=1");
exit;

?>