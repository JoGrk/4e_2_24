<?php
$link = new mysqli('localhost','root','','4e_2_biblioteka');

$sql = "SELECT imie, nazwisko
FROM czytelnicy
ORDER BY nazwisko;";
$result=$link ->query($sql);
$readers= $result ->fetch_all(1);

$sql="SELECT imie, nazwisko, COUNT(*) AS ile_tytulow
FROM autorzy
    JOIN ksiazki ON autorzy.id=ksiazki.id_autor
GROUP BY id_autor;";
$result=$link ->query($sql);
$authors=$result ->fetch_all(1);
$sql= "SELECT tytul
FROM ksiazki
    JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka
WHERE id_czytelnik=3; ";
$result=$link ->query($sql);
$titles=$result ->fetch_all(1);



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

    <h1>zadanie 4</h1>
    <table>
        <tr>
            <th>imie</th>
            <th>nazwisko</th>
            <th>ile_tytulow</th>
        </tr>
        <!-- <tr>
            <td>Jan</td>
            <td>Kasprowicz</td>
            <td>2</td>
        </tr> -->
        <?php
            foreach($authors as $author){
                echo "
                <tr>
                    <td> {$author['imie']}  </td>
                    <td>{$author['nazwisko']}</td>
                    <td>{$author['ile_tytulow']}</td>
                </tr>
                ";
            }
        ?>
    </table>


    <h1>zad3</h1>
    <ol>
        <!-- <li>Rzepka</li> -->
         <?php
         foreach ($titles as $title){
            echo "<li>{$title['tytul']}</li>";
         }
         
         ?>

    </ol>
</body>
</html>

<?php
$link -> close();
?>