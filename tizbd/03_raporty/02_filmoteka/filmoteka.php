<?php
$link=new mysqli('localhost', 'root', '', '4e_2_filmoteka');
$sql="SELECT tytul 
FROM Filmy
Where gatunek='SF'";
$result=$link->query($sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>

<?php
$link -> close();
?>