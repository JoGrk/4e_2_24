<!-- Raport wyświetla dane dotyczące produktów (nazwa produktu, nazwa dostawcy, cena) w formie tabeli. -->
 <?php
    $link = new mysqli ('localhost','root','','w3schools');

    $product = $_POST['product'] ?? NULL;
    $rise = $_POST ['rise'] ?? NULL;
    if($product && $rise){
        $sql = "UPDATE products
    SET price = price + price * $rise
    WHERE ProductID = $product;";

    $result=$link -> query($sql);
    }
  
   
    $sql ="SELECT ProductName,SupplierName, Price
           FROM products
           INNER JOIN suppliers ON products.SupplierID=suppliers.SupplierID";
    $result=$link -> query($sql);
    $products=$result -> fetch_all(1);
    
    $sql="SELECT ProductID,ProductName
        FROM products";
    $result=$link->query($sql);
    $listproducts=$result->fetch_all(1);
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
            <label for="product">Wybierz produkt</label>
        <select name="product" id="product">
            <!-- <option value="1">jabłko</option> -->
             <?php
                foreach($listproducts as $listproduct){
                    echo"
                        <option value='{$listproduct['ProductID']}'>{$listproduct['ProductName']}</option>
                    ";
                }
             ?>
        </select>
        <br>
        <label for="rise">Podwyżka o:</label>
        <input type="range" name="rise" id="rise" min="0" max="0.1" step="0.01">10% <br>
        <button>Wyślij</button>
    </form>
    <table>
        <tr>
            <th>Produkt</th>
            <th>Dostawca</th>
            <th>Cena</th>
        </tr>
        <!-- <tr>
            <td>jabłko</td>
            <td>Amazon</td>
            <td>10</td>
        </tr> -->
        <?php
        foreach($products as $product){
            echo"<tr>
            <td>{$product['ProductName']}</td>
            <td>{$product['SupplierName']}</td>
            <td>{$product['Price']}zl</td>
            </tr>";
        }
        ?>
    </table>
    

 </body>
 </html>

 <?php
 $link -> close();
 ?>