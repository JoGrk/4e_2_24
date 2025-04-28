<?php
$link = new mysqli('localhost','root','','w3schools');

$min_price=$_POST['min_price'] ?? null;
$max_price=$_POST['max_price'] ?? null;

if($min_price && $max_price){
    $sql="
    SELECT productname, categoryname, price
FROM products
    JOIN categories ON products.categoryid = categories.categoryid
WHERE price BETWEEN $min_price AND $max_price;
    ";
}
else{
    $sql="
    SELECT productname, categoryname, price
FROM products
    JOIN categories ON products.categoryid = categories.categoryid; 
    ";
}
$result=$link -> query($sql);
$products=$result -> fetch_all(1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="zadanie.php" method="post">
        <label for="min_price">minimalna cena</label>
        <input type="number" name="min_price" id="min_price" value=0 > <br>

        <label for="max_price">maksymanla cena</label>
        <input type="number" name="max_price" id="mxa_price" value=1000 > <br>

        <button>filtruj</button>
        


    </form>

    <?php
    foreach()
    ?>

</body>
</html>
<?php
$link -> close();
?>