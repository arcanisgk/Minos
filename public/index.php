<?php


//phpinfo();

//echo 'Hello World your On GOOOO';


try {
    $db = new PDO(
        'mysql:host=mysql:3306;dbname=minos',
        'minos',
        '1qazxsw22',
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        ]
    );
} catch (PDOException $e) {
    echo $e->getMessage();
}

