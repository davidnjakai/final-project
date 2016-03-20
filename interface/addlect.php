<?php
include "../connection.php";
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../css/mystyles.css">
</head>
<form method="post" action="addlect.php">
	Staff No:<br>
  <input type="text" name  ="staffno" value=""><br>
  Name:<br>
  <input type="text" name="name" value=""><br>
Email:<br>
  <input type="text" name="email" value=""><br><br>
  Phone No:<br>
  <input type="text" name="phone" value=""><br>
Password:<br>
  <input type="password" name="pass" value=""><br><br>
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
$staffNo=test_input($_POST['staffno']);
$name=test_input($_POST['name']);
$email=test_input($_POST['email']);
$phone=test_input($_POST['phone']);
$pass=md5(test_input($_POST['pass']));
$SQL="INSERT INTO lecturers (staff_no,staff_name,staff_email,staff_phone,staff_password)
VALUES (".$staffNo.",'".$name."','".$email."',".$phone.",'".$pass."');";
echo $SQL;
mysqli_query($db_handle,$SQL);
echo "lecturer added";
}
?>
</html>
