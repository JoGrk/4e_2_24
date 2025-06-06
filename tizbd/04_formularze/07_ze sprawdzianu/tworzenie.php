<!-- Grupa opcji: minimalna, średnia, maksymalna. Po wybraniu Raport wyświetlający średnie , minimalne lub maksymalne ceny produktów dostarczanych przez poszczególnych dostawców w formie tabeli (nazwa dostawcy, minimalna, średnia lub maksymalna cena) -->

<?php
$link=new mysqli('localhost','root','','w3schools');
$price_f=$_POST['price_f']?? NULL;
if($price_f){
   switch($price_f){
    case 'min':
        $sql="SELECT SupplierName, FORMAT( MIN(price),2,'pl_PL') as price 
    FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    GROUP BY products.SupplierID;";
        break;
    case 'avg':
        $sql="SELECT SupplierName, FORMAT( AVG(price),2,'pl_PL') as price 
    FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    GROUP BY products.SupplierID;";
        break;
    case 'max':
        $sql="SELECT SupplierName, FORMAT( MAX(price),2,'pl_PL') as price 
    FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    GROUP BY products.SupplierID;";
        break;
   }
   $result=$link->query($sql);
   $products=$result->fetch_all(1);
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
        <input  type="radio" name="price_f" id="price_min" value="min">
        <label for="price_min">minimalna</label>
        <input type="radio" name="price_f" id="price_avg" value="avg">
        <label for="price_avg">średnia</label>
        <input type="radio" name="price_f" id="price_max" value="max">
        <label for="price_max">maksymalna</label>
    <button>wysli</button>
    </form>
    <table>
    <!-- <tr>
        <td>liquid</td>
        <td>3</td>
    </tr> -->
   



    <?php
    if (isset($products)){
        foreach($products as $product){
            echo"<tr>
                <td>{$product['SupplierName']}</td>
                <td>{$product['price']}</td>
                     </tr>";
        }
    }
    ?>
    </table>
</body>
</html>
<?php
$link->close();
?>