<?php
$link = new mysqli ('localhost', 'root', '', '4e_2_filmy');
    if(isset($_POST['filmID'])){
        $filmID = $_POST['filmID'];
        $sql="
        DELETE 
FROM filmy
WHERE IDFilm = $filmID;
";
$result=$link -> query($sql);
if($result){
    echo "film o id $filmID zostal usuniety";
}
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="filmy.php">Powrót do filmy</a>
</body>
</html>
<?php
$link -> close();
?>
