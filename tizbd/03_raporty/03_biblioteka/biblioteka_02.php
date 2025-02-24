<?php
$link= new mysqli('localhost','root','','4e_2_biblioteka');

$sql="SELECT tytul 
FROM ksiazki
    JOIN Kategorie ON ksiazki.id_kategoria=kategorie.id
WHERE nazwa='dramat'";
$result=$link -> query($sql);
$books=$result -> fetch_all(1);

$sql="SELECT tytul
FROM ksiazki
    JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka
WHERE id_czytelnik=3; ";
$result=$link->query($sql);
$books2=$result -> fetch_all(1);

$sql="SELECT imie, nazwisko, COUNT(*) AS ile_tytulow
FROM autorzy
    JOIN ksiazki ON autorzy.id=ksiazki.id_autor
GROUP BY id_autor;";
$result=$link->query($sql);
$authors=$result -> fetch_all(1);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Tytuły</h2>
    <ul>
        <!-- <li>Zemsta</li> -->
        <?php
            foreach($books as $book){
                echo "<li>{$book['tytul']}</li>";
            } 
        ?>
    </ul>
    

    <h2>ksiazki wypozyczone przez czytelnika 2</h2>
    <ol>
        <?php
            foreach($books2 as $book2){
                echo "<li>{$book2['tytul']}</li>";
            } 
        ?>
    </ol>

    <h2>Autorzy</h2>
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
                echo "<tr>
            <td>{$author['imie']}</td>
            <td>{$author['nazwisko']}</td>
            <td>{$author['ile_tytulow']}</td>
            </tr>
                ";
            }


?>
    </table>
</body>
</html>

<?php
$link -> close();
?>