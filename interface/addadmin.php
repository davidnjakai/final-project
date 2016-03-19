<?php
include "../connection.php";
?>
<html>
<form method="post" action="addadmin.php">
	Admin ID:<br>
  <input type="text" name="id" value=""><br>
  Name:<br>
  <input type="text" name="name" value=""><br>
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
$id=test_input($_POST['id']);
$name=test_input($_POST['name']);
$pass=md5(test_input($_POST['pass']));
$SQL="INSERT INTO administrators (admin_id,admin_name,admin_password)
VALUES (".$id.",'".$name."','".$pass."');";
echo $SQL;
mysqli_query($db_handle,$SQL);
echo "administrator added";
}
?>
</html>
