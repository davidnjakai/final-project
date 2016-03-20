<?php
include "../connection.php";
session_start();
if(!isset($_SESSION['username'])){
    header("Location: ../index.php");
   }
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../css/mystyles.css">
</head>
<form method="post" action="addschedule.php">
	Start Time:<br>
  <input type="datetime-local" name="stime" value=""><br>
  End Time:<br>
  <input type="datetime-local" name="etime" value=""><br>
  Room:<br>
  <input type="text" name="room" value=""><br><br>
Course:<br>
  <input type="text" name="course" value=""><br><br>
Unit ID:<br>
  <input type="text" name="unit" value=""><br><br>
  <input type="submit" name ="add" value="add"><br>
  </form>
<?php
function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
if (isset($_POST['add'])){
$sTime=$_POST['stime'];
$eTime=$_POST['etime'];
$room=test_input($_POST['room']);
$course=test_input($_POST['course']);
$unit=test_input($_POST['unit']);
$SQLCHECK="SELECT * FROM schedule WHERE room_id = '".$room."' AND ((start_time <= '".$sTime."' AND end_time >= '".$sTime."')
OR (start_time < '".$eTime."' AND end_time >= '".$eTime."')
OR (start_time >= '".$sTime."' AND end_time <= '".$eTime."'));";
$result = mysqli_query($db_handle,$SQLCHECK);
if(mysqli_num_rows($result)==0){//avoid conflicting schedules
$SQL="INSERT INTO schedule (start_time,end_time,room_id,unit_id,course_id,reserved,staff_no)
VALUES ('".$sTime."','".$eTime."','".$room."','".$unit."','".$course."',1,".$_SESSION['username'].");";
mysqli_query($db_handle,$SQL);
echo "schedule added";
}
else{
  $db_field=mysqli_fetch_assoc($result);
  echo "Sorry, this arrangement will conflict with schedule number ".$db_field['sch_id'].". Check schedules for more info";
}
}
?>
</html>