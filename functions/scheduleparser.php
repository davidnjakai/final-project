<?php
include "../connection.php";
$filehandle=fopen("../timetables/Testtimetable.csv","r");
$someline=fgetcsv($filehandle,1024);
$someline2=fgetcsv($filehandle,1024);
while(!feof($filehandle)){
$line=fgetcsv($filehandle,1024);
$line2=fgetcsv($filehandle,1024);
$line3=fgetcsv($filehandle,1024);
//print("<tr><td>".$line[0]."</td><td>".$line[1]."</td><td>".$line[2]."</td><td>".$line[3]."</td><td>".$line[4]."</td><td>".$line[5]."</td><td>".$line[6]."</td><td>".$line[7]."</td><td>".$line[8]."</td><td>".$line[9]."</td></tr>");
for($x=1;$x<10;$x++) {	
	if($line3[$x]!=$line3[$x-1] && $line3[$x]!=""){
		$startTime=getStartTime($x);
		$room=$line[$x];
		$unit=$line3[$x];
		$staffName=$line2[$x];
		$SQLLects="Select staff_no from lecturers WHERE staff_name = '".$staffName."';";
		$res=mysqli_query($SQLLects);
		$myarray=mysqli_fetch_assoc($res);
		$staffNo=$myarray['staff_no'];
		if($line3[$x]!=$line3[$x+1]){
			$endTime=getEndTime($x);	
		}
		elseif ($line3[$x]!=$line3[$x+2]) {
			$endTime=getEndTime($x+1);
		}
		elseif ($line3[$x]!=$line3[$x+3]) {
			$endTime=getEndTime($x+2);
		}
		$SQL = "INSERT INTO schedule (start_time, end_time, room_id, unit_id, course_id, reserved, confimed, staff_no) VALUES ( '".$startTime."', '".$endTime."', '".$room."', '".$unit."', 'BBIT1A', 0, 0, '".$staffNo."';";
		mysqli_query($db_handle,$SQL);	
	}
	
}
}
fclose($filehandle);
function getStartTime($myVal){
if($myVal == 1){
	$mytime = "2016-02-01 08:00:00";
}
if($myVal == 2){
	$mytime = "2016-02-01 09:00:00";
}
if($myVal == 3){
	$mytime = "2016-02-01 10:00:00";
}
if($myVal == 4){
	$mytime = "2016-02-01 11:00:00";
}
if($myVal == 5){
	$mytime = "2016-02-01 12:00:00";
}
if($myVal == 6){
	$mytime = "2016-02-01 13:00:00";
}
if($myVal == 7){
	$mytime = "2016-02-01 14:00:00";
}
if($myVal == 8){
	$mytime = "2016-02-01 15:00:00";
}
if($myVal == 9){
	$mytime = "2016-02-01 16:00:00";
}
return $mytime;
}
function getEndTime($myVal){
if($myVal == 1){
	$mytime = "2016-02-01 09:00:00";
}
if($myVal == 2){
	$mytime = "2016-02-01 10:00:00";
}
if($myVal == 3){
	$mytime = "2016-02-01 11:00:00";
}
if($myVal == 4){
	$mytime = "2016-02-01 12:00:00";
}
if($myVal == 5){
	$mytime = "2016-02-01 13:00:00";
}
if($myVal == 6){
	$mytime = "2016-02-01 14:00:00";
}
if($myVal == 7){
	$mytime = "2016-02-01 15:00:00";
}
if($myVal == 8){
	$mytime = "2016-02-01 16:00:00";
}
if($myVal == 9){
	$mytime = "2016-02-01 17:00:00";
}
return $mytime;
}
mysqli_close($db_handle);
//INSERT INTO `schedule` (`sch_id`, `start_time`, `end_time`, `room_id`, `unit_id`, `course_id`, `reserved`, `confimed`, `staff_no`) VALUES ('344', '2016-02-03 08:00:00', '2016-02-03 10:00:00', 'LT2', 'HED1102', 'BBIT1A', '0', '0', '5638');
?>