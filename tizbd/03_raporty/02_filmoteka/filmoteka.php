<?php
$link=new mysqli('localhost', 'root', '', '4e_2_filmoteka');

$sql="SELECT tytul 
FROM Filmy
Where gatunek='SF'";
$result=$link->query($sql);
$movies = $result -> fetch_all(1);

$sql="SELECT tytul, imie, nazwisko
FROM filmy  
    JOIN rezyserzy on filmy.rezyserid=rezyserzy.idrezyser";
$result=$link->query($sql);
$authors=$result -> fetch_all(1);



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>tytuły SF</h2>
    <ol>
        <!-- <li>Matrix</li> -->
         <?php
         foreach($movies as $movie){
            echo "<li> {$movie['tytul']} </li>";
         }
         ?>
    </ol>

    <h2>Tytuły i Reżyserzy</h2>
    <ul>
        <!-- <li><strong>Matrix</strong> Andy Wachowski </li> -->
         <?php
        foreach($authors as $author){
            echo "<li><strong> {$author['tytul']} </strong> 
            {$author['imie']} {$author['nazwisko']} </li>";
        }
         ?>
    </ul>
</body>
</html>

<?php
$link -> close();
?>