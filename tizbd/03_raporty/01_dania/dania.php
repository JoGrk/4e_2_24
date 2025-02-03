<?php
   $link = new mysqli('localhost', 'root', '', '4e_2_baza');

   $sql = " SELECT nazwa
            FROM dania";
   $result = $link -> query($sql);  
   $dishes = $result -> fetch_all(1);  
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>nazwy dań</h2>
    <ol>
        <!-- <li>Gazpacho</li> -->
        <?php
           foreach ($dishes as $dish){
              echo "<li> {$dish['nazwa']}  </li>";
           }
        ?>
    </ol>
</body>
</html>

<?php
   $link -> close();
?>