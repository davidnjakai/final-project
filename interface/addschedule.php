<?php
include "../connection.php";
?>
<html>
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
$SQL="INSERT INTO schedule (start_time,end_time,room_id,unit_id,course_id,reserved,confimed,staff_no)
VALUES ('".$sTime."','".$eTime."','".$room."','".$unit."','".$course."',0,0,1234);";
mysqli_query($db_handle,$SQL);
echo "schedule added";
}
?>
</html>