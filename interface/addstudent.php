<?php
include "../connection.php";
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../css/mystyles.css">
</head>
<form method="post" action="addstudent.php">
	Adm No:<br>
  <input type="text" name  ="admno" value=""><br>
  Surname:<br>
  <input type="text" name="sname" value=""><br>
  Other names:<br>
  <input type="text" name="onames" value=""><br><br>
Course:<br>
  <input type="text" name="course" value=""><br><br>
D.O.B:<br>
  <input type="date" name="dob" value=""><br><br>
Email:<br>
  <input type="text" name="email" value=""><br><br>
  Phone No:<br>
  <input type="text" name="phone" value=""><br>
Password:<br>
  <input type="password" name="pass" value=""><br><br>
  <input type="submit" name = "add" value="ADD"><br>
  </form>
<?php
function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
if (isset($_POST['add'])){
$admNo=test_input($_POST['admno']);
$sName=test_input($_POST['sname']);
$oNames=test_input($_POST['onames']);
$course=test_input($_POST['course']);
$dob=test_input($_POST['dob']);
$email=test_input($_POST['email']);
$phone=test_input($_POST['phone']);
$pass=md5(test_input($_POST['pass']));
$SQL="INSERT INTO students (stud_id,stud_surname,stud_onames,stud_course,stud_dob,stud_email,stud_phone,stud_password)
VALUES ('".$admNo."','".$sName."','".$oNames."','".$course."','".$dob."','".$email."','".$phone."','".$pass."');";
mysqli_query($db_handle,$SQL);
echo "student added";
}
?>
</html>
