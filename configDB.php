<?php
//configDB.php 
//Dados para escolha do DataBase (DB)
$dbhost = "localhost";
$dbuser = "root"; //Usuário Raíz (Rute)
$dbpass = "";
$dbname = "sistemade_Login";
//Conexão com o banco de dados
$conecta = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
if ($conecta->connect_error) {
    die("Não foi possível conectar ao 
    Banco de Dados: " . $conecta->connect_error);
} else {
    //echo "<h1>Conectou no Banco de Dados  Manowwwww!</h1>";
}
