<?php
$link = new mysqli('localhost', 'root', '', '4e_2_wynajem');
$sql="SELECT *
FROM pokoje;";
$result=$link->query($sql);
$rooms=$result->fetch_all(1);

$sql="SELECT  id_pok, nazwa, sezon
FROM pokoje
    JOIN rezerwacje ON pokoje.id=rezerwacje.id_pok
WHERE liczba_dn > 7; ";
$result=$link->query($sql);
$reservations=$result->fetch_all(1);

$sql="SELECT SUM(liczba_dn) AS razem_rezerwacji, sezon
FROM rezerwacje
GROUP BY sezon;";
$result=$link->query($sql);
$reservations2=$result->fetch_all(1);
?>


<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wynajem</title>
</head>
<body>
    <h2>Pokoje</h2>
    <table>
        <tr>
            <th>id</th>
            <th>nazwa</th>
            <th>cena</th>
        </tr>
        <!-- <tr>
            <td>1</td>
            <td>jednoosobowy</td>
            <td>10</td>
        </tr> -->
        <?php
        foreach ($rooms as $room){
            echo "
            <tr>
                <td> {$room['id']} </td>
                <td>{$room['nazwa']}</td>
                <td>{$room['cena']}</td>
            </tr>
            ";
        }

        ?>
    </table>

    <h2>Rezerwacje</h2>
    <ul>
        <!-- <li>1 <strong>jednosobowy</strong> <em>sezon</em></li> -->

        <?php
        foreach ($reservations as $reserve){
                echo "
                <li>{$reserve['id_pok']} 
                <strong>{$reserve['nazwa']}</strong> 
                <em>{$reserve['sezon']}</em></li>
                
                ";
        }
        ?>

        
        
    </ul>
</body>
</html>
<?php
$link -> close();
?>