<?php
$link = new mysqli('localhost', 'root', '', 'w3schools');
$productname = $_POST['product_name'] ?? null;
if($productname){
    $sql="SELECT productname, round(price,2)
FROM products
WHERE productname like '$productname%';";

} else {
    $sql = "SELECT productname, round(price,2)
FROM products;";
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
        <input type="text" name="product_name">
        podaj nazwe produktu
        <button>Wyślij</button>
    </form>
</body>
</html>

<?php
$link -> close();
?>