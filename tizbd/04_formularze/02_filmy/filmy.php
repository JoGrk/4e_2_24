<?php
$link = new mysqli('localhost', 'root', '', '4e_2_filmy');
$sql="select * from filmy";
$result = $link -> query($sql);
$films = $result -> fetch_all(1);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ol>
        <!-- <li>Matrix</li> -->
         <?php
            foreach($films as $film){
                echo"
                    <li> {$film['Tytul']} </li>
                ";
            }
         ?>
    </ol>
</body>
</html>
<?php
    $link -> close();
?>