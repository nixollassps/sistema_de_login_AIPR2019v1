<?php 
//configDB.php

//Dados para Escolha do DataBase (DB)
$dbhost = "localhost";
$dbuser = "root"; 
$dbpass = "";
$dbname = "sistemade_Login";

//Conexão com o banco de dados
$conecta = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
if($conecta->connect_error){
    die("Não foi possível conectar ao Banco de Dados: ". $conecta->connect_error);
}else{
    //echo"<h1>Conectou no BD manoooww!</h1>";
}