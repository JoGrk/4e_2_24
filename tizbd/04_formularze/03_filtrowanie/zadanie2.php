<?php
$link=new mysqli("localhost","root","","w3schools");

$suppid = $_POST['suppid'] ?? null;
if($suppid){
    $sql = "SELECT productname, price 
FROM products
WHERE supplierID = $suppid;";
}
else{
    $sql = "
SELECT productname, price
FROM products;";
}
$result=$link->query($sql);
$products=$result->fetch_all(1);

$sql="
    select supplierid, suppliername
    from suppliers;";

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
        <label for="suppid">wybierz dostawce</label>
        <select name="suppid" id="suppid">
            <!-- <option value="1">fedex</option> -->
            <?php
                foreach($suppliers as $supplier){
                    echo "
                    <option value='{$supplier['supplierid']}'>{$supplier['suppliername']}</option>";
                }
            ?>
        </select>
        <button>Wyślij</button>
    </form>
    <ol>
        <!-- <li>nazwa produktu - cena</li> -->
         <?php
            foreach($products as $product ){
                echo "
                <li>{$product['productname']} - {$product['price']}</li>
                ";
            }
         ?>
    </ol>
</body>
</html>

<?php
$link -> close();
?>