<?php
$link = new mysqli ('localhost','root','','4e_2_futbol');

$sql="SELECT zespol1,zespol2,wynik,data_rozgrywki
FROM rozgrywka
WHERE zespol1 = 'EVG';";
$result = $link -> query($sql);
$games = $result -> fetch_all(1);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h2>Światowe rozgrywki piłkarskie</h2>
        <img src="obraz1.jpg" alt="boisko">
    </header>

    <section class="games">
        <!-- skrypt1 -->
         <div class="game">
            
         </div>
    </section>

    <main>
        <h2>Reprezentacja Polski</h2>
    </main>

    <footer>
        <section class="left">
            <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-napastnicy):</p>
            <form action="" method="post">
                <input type="number" name="position" id="position">
                <button>Wyślij</button>
            </form>
            <ul>
                <!-- skrypt2 -->
            </ul>
        </section>

        <section class="right">
            <img src="zad1.png" alt="piłkarz">
            <p>Autor:0000</p>
        </section>
    </footer>
    
</body>
</html>
<?php
$link -> close();

?>