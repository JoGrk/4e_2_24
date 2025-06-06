<?php
$link = new mysqli('localhost', 'root', '', 'w3schools');
$sql = "SELECT productname, productid
from products;";
$result=$link->query($sql);
$products=$result->fetch_all(1);

$product_f=$_POST['product_f'] ?? NULL;
$price_f=$_POST['price_f'] ?? NULL;
if($product_f && $price_f){
    $sql="UPDATE products
SET price=$price_f
WHERE productid=$product_f;";
$result=$link->query($sql);

}


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
        <select name="product_f" id="product_f">
            <!-- <option value="1">Nutella</option> -->
             <?php
                foreach($products as $product){
                    echo "<option value='{$product['productid']}'>{$product['productname']}</option>";
                }
             ?>
        </select>
        <label for="price_f">Nowa cena</label>
        <input type="range" name="price_f" id="price_f" step="5" min="5" max="300">
        <button>Wyślij</button>
    </form>
    
</body>
</html>

<?php
$link->close();
?>