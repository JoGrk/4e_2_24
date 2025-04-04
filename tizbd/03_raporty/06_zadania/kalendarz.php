<?php
    $link=new mysqli('localhost','root','','4e_2_zadania');
    
    $sql = "SELECT miesiac,rok FROM  zadania WHERE dataZadania = '2020-07-01';";
    $result = $link -> query($sql);
    $days = $result -> fetch_all(1);

    $sql = "SELECT dataZadania, wpis
    FROM zadania
    WHERE miesiac = "lipiec";";
    $result = $link -> query($sql);
    $tasks = $result -> fetch_all(1);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mój kalendarz</title>
    <link rel="stylesheet" href="styl6.css">
</head>
<body>
  
    <header>
        <section class="one">
            <img src="logo1.png" alt="Mój kalendarz">
        </section>


        <section class="two">
            <h1>kalendarz</h1>
            <!-- skrypt 1 -->
        </section>
    </header>

    <main>
        <!-- skrypt 2 -->
    </main>

    <footer>
        <p>Strone wykonał ###</p>
    </footer>
</body>
</html>
<?php
$link->close();
?>