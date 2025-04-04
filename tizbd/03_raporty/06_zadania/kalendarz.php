<?php
    $link=new mysqli('localhost','root','','4e_2_zadania');

    if(!empty($_POST['task'])){
        $task = $_POST['task'];
        $sql = "
        INSERT INTO zadania(dataZadania, wpis, miesiac, rok)
        VALUES ('2020-07-13','$task', 'lipiec', '2020');";
        $result = $link -> query($sql);
    }
    
    $sql = "SELECT miesiac,rok FROM  zadania WHERE dataZadania = '2020-07-01';";
    $result = $link -> query($sql);
    $days = $result -> fetch_all(1);

    $sql = "SELECT dataZadania, wpis
    FROM zadania
    WHERE miesiac = 'lipiec'";
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
             <!-- <h3>
             miesiąc:  nazwa_miesiąca>, rok: rok
             </h3> -->
             <?php
            foreach ($days as $day){
                echo "
            <h3>
                miesiąc:  {$day['miesiac']}, rok: {$day['rok']}
             </h3>
               ";
            }

             ?>
        </section>
    </header>

    <main>
        <!-- skrypt 2 -->
         <!-- <section class="task">
            <h5>Data</h5>
            <p>wpis</p>
         </section> -->
         <?php
            foreach($tasks as $task){
                echo "
                <section class='task'>
                    <h5>{$task['dataZadania']}</h5>
                    <p>{$task['wpis']}</p>
                </section>
                ";
            }
         ?>
    </main>

    <footer>
        <form action="" method="post">
            dodaj wpis
            <input type="text" name="task" id="">
            <button>Dodaj</button>
        </form>
        <p>Strone wykonał ###</p>
    </footer>
</body>
</html>
<?php
$link->close();
?>