<?php
$link = new mysqli ('localhost','root','','w3schools');
$price_f =$_POST['price_f'] ?? NULL;

if ($price_f){   // czy użytkownik coś wybrał na formularzu
    // var_dump($price_f);
    //co wybrał??
    if ($price_f == "min"){
        $sql =" SELECT  SupplierName,MIN(price)as lvlprice
                FROM suppliers
                JOIN products ON suppliers.supplierID=products.supplierID
                GROUP BY SupplierName;";
    }
    else if ($price_f == "avg"){
        $sql =" SELECT  SupplierName,AVG(price)as  lvlprice
                FROM suppliers
                JOIN products ON suppliers.supplierID=products.supplierID
                GROUP BY SupplierName;";
    }
    else if ($price_f == "max"){
        $sql =" SELECT  SupplierName,MAX(price)as  lvlprice
                FROM suppliers
                JOIN products ON suppliers.supplierID=products.supplierID
                GROUP BY SupplierName;";
    }
    $result = $link -> query($sql);
    $prices = $result -> fetch_all(1);
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
        <input type="radio" name="price_f" id="min" value="min">
        <label for="min">minimalna</label>
         <input type="radio" name="price_f" id="avg" value="avg">
        <label for="min">srednia</label>
         <input type="radio" name="price_f" id="max" value="max">
        <label for="min">maksymalna</label>
        <button>wyslij</button>
    </form>

    <table>
        <!-- <tr>
            <td>SupplierName</td>
            <td>price</td>
        </tr> -->
        <?php 
        if ($price_f){
              foreach ($prices as $price){
                echo "<tr>
                        <td>{$price['SupplierName']}</td>
                        <td>{$price['lvlprice']}</td>
                     </tr>";

              }

        }
      
        ?>
    </table>
    
</body>
</html>
<?php
$link -> close();
?>