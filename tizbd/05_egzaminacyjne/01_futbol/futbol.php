<?php
$link = new mysqli ('localhost','root','','4e_2_futbol');

$position_f = $_POST['position_f'] ?? NULL;
if($position_f){
    $sql="SELECT imie,nazwisko,pozycja_id
            FROM zawodnik
            WHERE pozycja_id = $position_f;";
    $result = $link -> query($sql);
    $players = $result -> fetch_all(1);
}



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
         <!-- <div class="game">
            <h3>zespół1 - zespół2</h3>
            <h4>wynik</h4>
            <p>w dniu: <data rozgrywki></p>
         </div> -->
         <?php
            foreach($games as $game){
                echo"<div class='game'>
                        <h3>{$game['zespol1']} - {$game['zespol2']}</h3>
                        <h4>{$game['wynik']}</h4>
                        <p>w dniu: {$game['data_rozgrywki']}</p>
                     </div>";
            }

         ?>
    </section>

    <main>
        <h2>Reprezentacja Polski</h2>
    </main>

    <footer>
        <section class="left">
            <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-napastnicy):</p>
            <form action="" method="post">
                <input type="number" name="position_f" id="position">
                <button>Wyślij</button>
            </form>
            <ul>
                <!-- skrypt2 -->
                <!-- <li><p>imie nazwisko</p></li>  -->
                 <?php
                    if($position_f){
                        foreach( $players as $player){
                            echo"<li><p>{$player['imie']} {$player['nazwisko']}</p></li>";
                        }
                    }
                 ?>
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