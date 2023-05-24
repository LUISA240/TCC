<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/meuperfil.css">
    <title>Meu Perfil</title>
</head>
<body class="dark-theme">
 
<div class="wrapper">

<?php
 require('connect.php');
 session_start();
 
 if (isset($_GET['cod'])) {
  $id_publi = $_GET['id'];
  $codigo = $_GET['cod'];
 
   $query = "SELECT * FROM tabpubli WHERE id_publi = '$id_publi'";
   $resultado = mysqli_query($con, $query);
 
   if ($resultado) {
     $publicacao = mysqli_fetch_assoc($resultado);
 
     $codigo = $publicacao['codigo_usuario'];
 
     $query = "SELECT * FROM tabela_cadastro WHERE codigo = '$codigo'";
     $resultado = mysqli_query($con, $query);
 
     if ($resultado) {
       $usuario = mysqli_fetch_assoc($resultado);
 
       echo "<div class='perfil'>";    
       echo "<div class='capa'>"; 
       echo "</div>";
       echo "<div class='meuperfil'>";
       echo "<img src=$usuario[foto]>";
          echo "<h1> $usuario[nome]</h1>";
          echo "<p>$usuario[bio]</p>";
    
     } else {
       echo "Erro ao executar consulta: " . mysqli_error($con);
     }
   } else {
     echo "Erro ao executar consulta: " . mysqli_error($con);
   }
 } else {
   echo "ID da publicação não definido.";
 }
?>

 <div id="conteudo"></div>

 <form id="form-botao2">
 <button id="botao2" name="botao2">Publicacoes</button>
 <!-- elemento para exibir o conteúdo -->
 </form>


 <script>

$('#form-botao2').on('submit', function(e) {
    e.preventDefault();
    $.ajax({
      url: 'minhaspublicacoes.php',
      type: 'post',
      data: {botao2: true},
      success: function(response) {
        $('#conteudo').html(response);
      }
    });
  });


</script>

</body>
 



