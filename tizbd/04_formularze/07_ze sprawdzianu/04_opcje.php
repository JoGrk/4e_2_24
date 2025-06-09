
 <!-- Grupa opcji: dostawca, kategoria. Po wybraniu wyświetlony jest raport pokazujący nazwę produktu, nazwę dostawcy i cenę lub nazwę produktu, nazwę kategorii i cenę (w zależności od wybranej na formularzu opcji) w postaci listy tabeli <!DOCTYPE html> -->
<?php
$link=new mysqli('localhost','root','','w3schools');
$type_f=$_POST['type_f']?? NULL;

//wybrano na formularzu
if($type_f){
    if($type_f=='supplier'){
        $sql="SELECT productName,price,SupplierName
                FROM products
                JOIN Suppliers ON products.SupplierID=suppliers.supplierID;";
    }
    else if($type_f=='category'){
        $sql="SELECT productName,price,categoryName
            from products
            JOIN categories ON products.categoryID=categories.categoryID;";
    }
    else{
        $sql="SELECT productName,price 
            from products;";
    }
    $result=$link->query($sql);
    $products=$result->fetch_all();
}



?>


 <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
    <input type="radio" name="type_f" id="supplier" value="supplier">
    <label for="supplier">dostawca</label>
    <input type="radio" name="type_f" id="category" value="category">
    <label for="category">kategoria</label>
    <button>Wyslij</button>
    </form>

    <table>
        <!-- <tr>
            <td>nazwa</td>
            <td>price</td>
            <td></td>
        </tr> -->
        <?php
        if($type_f){
            foreach($products as $product){
                echo"<tr>";
                        // <td>{$product[0]}</td>
                        // <td>{$product[1]}</td>
                        // <td>{$product[2]}</td>
                  foreach($product as $pole)   {
                    echo "<td>$pole</td>";
                  }   
        `        echo   " </tr>";
            }
        }
        ?>
    </table>
</body>
</html>
<?php
$link->close();

?>