<?php
include "loginpage.php";
include "../connection.php";
if ($db_found) {
if($domain=="lecturer"){ 
$SQL = "SELECT * FROM lecturers WHERE staff_no = '".$name."' AND staff_password= '".$password."'"; 
} 
else if($domain=="student"){ 
$SQL = "SELECT * FROM students WHERE stud_id = '".$name."' AND stud_password= '".$password."'";
} 
else if($domain=="admin"){ 
$SQL = "SELECT * FROM administrators WHERE admin_id = '".$name."' AND admin_password= '".$password."'"; 
}
$result = mysqli_query($db_handle,$SQL);
$numrows=mysqli_num_rows($result);  
if($numrows>0){
echo "<head>
<meta http-equiv=\"refresh\" content=\"2; url=../interface/homepage.html\" />
</head>
<center>logged in</center>
";
}
else{
echo  "<center>invalid user details</center>";
}
mysqli_close($db_handle);
}
else {
mysqli_close($db_handle);
print "<center>db not found<center>";
}
?>

