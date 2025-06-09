 <!-- Nowy produkt. Formularz:
Lista rozwijana z nazwą dostawcy (jako value id dostawcy)
pole tekstowe do wpisania nazwy towaru
suwak (range) do ustawienia ceny dla wartości od 0 do 200.
Przycisk

Po wybraniu dostawcy, wstawieniu nazwy produktu, wybraniu ceny zostaje dodany do bazy nowy produkt -->
<?php
$link=new mysqli('localhost','root','','w3schools');

$supplier_f=$_POST['supplier_f'] ?? NULL;
$product_f=$_POST['product_f'] ?? NULL;
$price_f=$_POST['price_f'] ?? NULL;

if($supplier_f && $product_f && $price_f ){
    $sql="INSERT INTO Products
    (SupplierID, ProductName, price)
    values
    ($supplier_f,'$product_f',$price_f);";

    $result=$link->query($sql);
}

$sql = "SELECT SupplierName, SupplierID
FROM Suppliers;";
$result=$link->query($sql);
$suppliers=$result->fetch_all(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <select name="supplier_f" id="supplier_f">
            <!-- <option value="1">supplierName</option> -->
             <?php
            foreach($suppliers as $supplier){
                echo"<option value='{$supplier['SupplierID']}'>{$supplier['SupplierName']}</option>";
            }
             ?>
            
        </select>
        <br>
        <label for="product_f">Nazwa produktu</label>
        <input type="text" name="product_f" id="product_f">
        <br>
        <label for="price_f">Podaj cene</label>
        <input type="range" name="price_f" id="price_f" min="0" max="200" step="5">
        <button>Wyślij</button>
    </form>
    <?php

    ?>
</body>
</html>
<?php
$link->close();
?>