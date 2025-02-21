<?php
$link = new mysqli('localhost','root','','4e_2_biblioteka');
$sql = "SELECT imie, nazwisko
FROM czytelnicy
ORDER BY nazwisko;";
$result=$link ->query($sql);
$readers= $result ->fetch_all(1);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Czytelnicy</h2>
    <!-- <p>
        Olga <strong>Domys</strong>
    </p> -->
    <?php
    foreach($readers as $reader){
        echo " 
        <p>
            {$reader['imie']} <strong>{$reader['nazwisko']}</strong>
        </p>
        ";
    }
    ?>
</body>
</html>

<?php
$link -> close();
?>