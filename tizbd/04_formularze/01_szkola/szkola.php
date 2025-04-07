<?php
$link=new mysqli('localhost', 'root', '','4e_2_szkola');
$sql="SELECT *
FROM uczen";
$result=$link -> query($sql);
$students=$result -> fetch_all(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <h1>Uczniowie</h1>
    <h2>Lista uczniów</h2>
<table>

<?php

echo "<tr>";
foreach ($students[0] as $key => $value) {
    echo "<th> $key </th> ";
}

echo "</tr>";


foreach($students as $student){
    echo "<tr>";
    foreach($student as $field){
        echo "<td> $field </td>";
    }
    echo "</tr>";
}
?>
</table>
    <h2>Aktualizacja</h2>
    <form action="Aktualizacja.php" method="post">
    <label for="studentID">Podaj ID ucznia:</label>    
    <input type="number" name="studentID" id="studentID">
    <button>Wyślij</button>
    </form>

    <h2>Usuwanie</h2>
    <form action="Usuwanie.php" method="post">
    <label for="studentID">ID ucznia:</label>    
    <input type="number" name="studentID" id="studentID">
    <button>Wyślij</button>
    </form>

</body>
</html>
<?php
$link->close();
?>