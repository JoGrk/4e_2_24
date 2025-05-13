Utwórz grupę opcji z nazwami firm spedycyjnych (kurierskich). Po kliknięciu wyświetlone są identyfikatory i daty zamówień obsługiwanych przez te firmy
<?php
$link=new mysqli('localhost','root','','w3schools');

$sql="SELECT shipperid,shippername
FROM shippers;";
$result=$link->query($sql);
$shippers=$result->fetch_all(1);
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
<?php
$link->close();
?>
