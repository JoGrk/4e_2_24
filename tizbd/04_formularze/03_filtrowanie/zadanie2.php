<?php
$link=new mysqli("localhost","root","","w3schools");

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
    </form>
</body>
</html>

<?php
$link -> close();
?>