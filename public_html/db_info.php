<?
//     $conn = mysql_connect("192.168.2.71", "root", "1111");
    $conn=mysql_connect("localhost","darakgol","ekfkrrhf2!");
    if(!$conn){
        die("연결실패:".mysqli_connect_error());
    }
     mysql_query("set names utf8");
     mysql_select_db("darakgol");
?>