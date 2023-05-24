<!DOCTYPE html>
<html lang="ptbr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisar</title>
    <link href="http://fonts.cdnfonts.com/css/caver-pitalsal" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="estilos/pesquisar.css">
    <link rel="stylesheet" href="estilos/pesq.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <script>
        function pesquisar(texto){
            var texto = $('#txtPesquisar').val();
            if(texto.length>=3){
                $.ajax({
                
                url: "pesquisar.act.php?texto="+texto,
               
                success: function (response) {
                    $('#result').show();
                    $('#result').html(response);
                }
            });
            }else{
                $('#result').hide();
            }
        }
    </script>
</head>

<div class="scroll-up-btn">
            <a href="feed.php">
            <svg xmlns="http://www.w3.org/2000/svg"  name="home-outline" width="38" height="20" fill="currentColor" class="bi bi-arrow-left-short" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z"/>
            </svg>
            </a>
        </div>

<body>


  
 
            <?php
                @session_start();
                if(isset($_SESSION['msg'])){
                    echo "<p class=alert>$_SESSION[msg]</p>";
                    unset($_SESSION['msg']);
                }
            ?>

            <div class="tudo">
    <div class= "h1Pesq">
    <h1 id="title"> O que esta procurando?</h1>
    <input type="search" name="" id="txtPesquisar" onkeyup="pesquisar()">
        <div id="result"></div>
        </div>
        </div>
        <!-- <img src="img/lupatst.png" id="lupa-fundo" alt=""> -->
    </body>
</html>