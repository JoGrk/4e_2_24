<!-- Lista rozwijana z nazwami krajów z których pochodzą klienci (tylko tych krajów) - wyświetla nazwy klientów z tego kraju -->
<?php
$link=new mysqli('localhost','root','','w3schools');

$selected = $_POST['country_form'] ?? null;
if($selected){
    $sql = "SELECT customerName
FROM customers
WHERE country='$selected'";
}
else{
 $sql = "SELECT customerName
FROM customers";
};

$result=$link->query($sql);
$customers=$result->fetch_all(1);

$sql="SELECT DISTINCT country
FROM customers
ORDER BY country;";
$result=$link->query($sql);
$countries=$result->fetch_all(1);


?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="" method="POST">
    <select name="country_form">
        <!-- <option value='France'>France</option> -->
         <?php
         foreach($countries as $country){
            echo" 
            <option value='{$country['country']}'>{$country['country']}</option>
            ";
         }
         ?>
    </select>
    <button>Wyślij</button>
    <ol>
        <!-- <li>customername</li> -->
         <?php
            foreach($customers as $customer){
                echo"<li>{$customer['customerName']}</li>";
            }
         ?>
    </ol>
</form>   
</body>
</html>
<?php
$link->close();
?>