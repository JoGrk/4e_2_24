<!-- Utwórz grupę opcji z nazwami firm spedycyjnych (kurierskich). Po kliknięciu wyświetlone są identyfikatory i daty zamówień obsługiwanych przez te firmy -->
<?php
$link=new mysqli('localhost','root','','w3schools');

$ship_form = $_POST['shipper'] ?? null;
if($ship_form){
    $sql="SELECT orderID, OrderDate 
from Orders
where shipperid = $ship_form;";
}
else {
    $sql="SELECT orderID, OrderDate 
    from Orders;";
};
$result=$link->query($sql);
$orders=$result->fetch_all(1);

$sql="SELECT shipperid,shippername
FROM shippers;";
$result=$link->query($sql);
$shippers=$result->fetch_all(1);
?>




<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST">
        <h4>Wybierz firme spedycyjna</h4>
        <!-- <input type="radio" name="shipper" id="s1" value="1">
        <label for="s1">Speedy Express</label>
        <br> -->
        <?php
            foreach($shippers as $shipper){
                echo"
                <input type='radio' name='shipper' 
                id='s{$shipper['shipperid']}' 
                value='{$shipper['shipperid']}'>
                <label for='s{$shipper['shipperid']}'>
                            {$shipper['shippername']}
                </label>
                <br>
                ";
            }
        ?>
        <button>Wyślij</button>
    </form>
    <ol>
        <!-- <li>OrderID - OrderDate</li> -->
            <?php
            foreach($orders as $order){
                echo"<li>{$order['orderID']} - {$order['OrderDate']}</li>";
            };
            ?>
    </ol>
    
</body>
</html>
<?php
$link->close();
?>
