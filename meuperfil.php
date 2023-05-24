<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/meuperfil.css">
    <title>Meu Perfil</title>
    <script src="js/temadarkfeed.js"></script>
</head>
<body class="dark-theme">
 
<div class="wrapper">

    <?php
     @session_start();     
          echo "<div class=perfil>";    
          echo "<div class='meuperfil'>";
          echo "<div class='fotoPerfilGrande'>";
          echo "<img src=$_SESSION[foto] id='fotoPerfilImg'>";
          echo "</div>";
          echo "<div class='bio'>";
          echo "<h1> $_SESSION[nome]</h1>";
          
          echo "<p>$_SESSION[bio]</p>";
     
          echo "</div>";  
          
         

        //   echo "<p> $_SESSION[email]</p>";
        //   echo "<p><a href=alterarPerfil.php?cod=$_SESSION[codigo]>Alterar</a>";
          
    ?>
 
        
   
       <!-- BOTOES DE PUBLI E SALVOS -->
       <div>
                     <input type="checkbox" class="checkbox" onclick="toggleDarkMode();" id="toggleBtn" />
                     <label class="switch" for="toggleBtn">
                     <svg xmlns="http://www.w3.org/2000/svg" id="sun" height="3vh" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
                     <path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" /></svg>
                     <svg xmlns="http://www.w3.org/2000/svg" id="moon" height="3vh" fill="currentColor" class="bi bi-moon-fill" viewBox="0 0 16 16"><path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/></svg>
                     <div class="ball"></div>
                     </label>
                    </div>

       <div class="opcs">
       <div class="botoes">

          <form id="form-botao1">
          <button id="botao1" name="botao1" value="<?php echo $_SESSION['codigo']?>">SALVOS</button>
          <!-- elemento para exibir o conteúdo -->
          </form>
        

          <form id="form-botao2">
          <button id="botao2" name="botao2">PUBLICAÇÕES</button>
          <!-- elemento para exibir o conteúdo -->
          </form>
          
        </div><div id="conteudo"></div>
        </div>
        <div class="scroll-up-btn">
            <a href="feed.php" id='back'>
            <svg xmlns="http://www.w3.org/2000/svg" id="icon" height="25px" fill="currentColor" class="bi bi-arrow-left-short" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z"/>
          </svg>  
            </a>
        </div>      
      
</div> 
  
        </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <div class="opcs">
    
<script>
// enviando uma solicitação AJAX para o arquivo PHP quando um botão for clicado.
$(document).ready(function() {

  $('#form-botao1').on('submit', function(e) {
    e.preventDefault();
    var botao = $('#botao1').val()
    $.ajax({
      url: 'meussalvos.php?cod='+botao,
      success: function(response) {
        $('#conteudo').html(response);
      }
    });
  });

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
});
    
    </script>

<?php
if (isset($_POST['botao1'])) {
  echo "Conteúdo do botão 1";
} elseif (isset($_POST['botao2'])) {
  echo "Conteúdo do botão 2";
}
?>


<!-- ACABA BOTOES SALVOS E PUB  -->

         
       

        <!-- <?php include('publicacoes.php'); 
            @session_start();
?> -->
         <!-- <div class="pub"> 
            
             <img src="./img/mark.png">
             <img src="./img/mark.png">
             <img src="./img/mark.png">
             <img src="./img/mark.png">
             <img src="./img/mark.png">
             

         </div> -->
         <script src="https://kit.fontawesome.com/df05055cb2.js" crossorigin="anonymous"></script>
         <script src= "temadarkfeed.js"> </script>
        </div>
    
</body>
</html>