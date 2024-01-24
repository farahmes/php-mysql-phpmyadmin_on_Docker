<?php
echo "this is index.php";
$connexion=new mysqli("mysql","root","root", "my_db");
//check connection 
if($connexion->connect_error){
    die("connection failed :".$connexion->connect_error);
}
$sql = "SELECT name FROM users " ;//to edit 
$result = $connexion->query($sql);

if($result->num_rows>0){
    while($row=$result->fetch_assoc()){
        echo $row['name']."<br>";
    }
}else{
    echo "no result, empty";
}
?>