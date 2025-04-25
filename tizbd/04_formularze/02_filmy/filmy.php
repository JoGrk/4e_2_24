<?php
$link = new mysqli('localhost', 'root', '', '4e_2_filmy');

if(!empty($_POST['name']) && !empty($_POST['surname']) ){
    $name=$_POST['name'];
    $surname=$_POST['surname'];
    $sql="INSERT Into rezyserzy
        (imie,nazwisko)
        VALUES 
        ('$name','$surname'); ";
        $result = $link -> query($sql);
        if ($result ){
            echo "dodano rezysera $name $surname";
        }
}

$sql="select * from filmy";
$result = $link -> query($sql);
$films = $result -> fetch_all(1);

$sql = "SELECT *
FROM rezyserzy";
$result = $link -> query($sql);
$directors = $result -> fetch_all(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table,th,td{
            border: 1px solid;
            border-collapse: collapse
        }
    </style>
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
    <h2>Nowy reżyser</h2>
    <table>
        <tr>
            <th>id rezysera</th>
            <th>imie</th>
            <th>nazwisko</th>
        </tr>
        <!-- <tr>
            <td>1</td>
            <td>Andy</td>
            <td>Wachowski</td>
        </tr> -->
        <?php
        foreach($directors as $director){
            echo "
            <tr>
                <td>{$director['IDRezyser']}</td>
                <td>{$director['Imie']}</td>
                <td>{$director['Nazwisko']}</td>
            </tr>
            ";
        }

        ?>
    </table>
    <br>
    <form action="filmy.php" method="post">
        <label for="name">Wpisz imię</label>
        <input type="text" name="name" id="name">
        <br>
        <label for="surname">Wpisz nazwisko</label>
        <input type="text" name="surname" id="surname">
        <button>Wyślij</button>


    </form>
    <h2>Usuwanie filmu</h2>
    <form action="usuwanie.php" method="POST">
        <select name="filmID" id="filmID">
            <!-- <option value='1'>Matrix</option>
            <option value='2'>Gwiezdne Wojny</option> -->
            <?php
            foreach($films as $film){
                echo "
                <option value='{$film['IDFilm']}'>{$film['Tytul']}</option>
                ";
            }
            ?>
        </select>
        <br>
        <button>Usuń film</button>
    </form>
</body>
</html>
<?php
    $link -> close();
?>