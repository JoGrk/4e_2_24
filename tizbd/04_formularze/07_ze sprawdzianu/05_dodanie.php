<!-- 5 Dodanie nowego zamówienia. Formularz:

lista rozwijana z nazwiskami pracowników (jako value id pracownika)
pole typu data na datę zamówienia
Lista rozwijana z nazwami klientów (jako value id klienta)
przycisk

po wpisaniu (lub wybraniu danych) dodane jest nowe zamówienie -->
<?php
$link = new mysqli('localhost', 'root', '', 'w3schools');

$employee_f=$_POST['employee_f'] ?? NULL;
$customer_f=$_POST['customer_f'] ?? NULL;
$date_f=$_POST['date_f'] ?? NULL;
if($date_f && $employee_f && $customer_f){
    $sql="INSERT INTO orders 
(EmployeeID, orderDATE, CustomerID) 
VALUES 
($employee_f, '$date_f', $customer_f);";
$result=$link->query($sql);
}


$sql="SELECT LastName, EmployeeID
FROM employees;";
$result=$link->query($sql);
$employees=$result->fetch_all(1);

$sql="SELECT CustomerName, CustomerID
FROM customers;";
$result=$link->query($sql);
$customers=$result->fetch_all(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <label for="employee_f">Pracownik:</label>
        <select name="employee_f" id="employee_f">
            <!-- <option value="1">Nazwisko</option> -->
             <?php
                foreach($employees as $employee){
                    echo"
                        <option value='{$empolyee['EmployeeID']}'>{$employee['LastName']}</option>
                    ";
                }
             ?>
        </select>
        <input type="date" name="date_f" id="date_f">
        <label for="customer_f">Klient:</label>
        <select name="customer_f" id="customer_f">
            <!-- <option value="2">Klient:</option> -->
             <?php
                foreach($customers as $customer){
                    echo"
                        <option value='{$customer['CustomerID']}'>{$customer['CustomerName']}</option>
                    ";
                }
             ?>
        </select>
        <br>
        <button>Wyślij</button>
    </form>
</body>
</html>
<?php
$link -> close()
?>