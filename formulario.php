<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Protótipo</title>
</head>



<style>
    body{
        background-color: bisque;
        
        display: flex;
        justify-content: center;
        align-items: center;
        }
    .caixaform{
        -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        background-color: rgb(245, 166, 62);
        border-style: solid;
        padding: 20px;
        margin: 150px;
              }
    input[type=submit]{
        width: 200px;
        height: 40px;
            }
    input[type=text]{
        font-size: 20px;
    }

</style>
<body>
<div class="caixaform">
 <form name="dados" method="POST" action="">
<h1>Pesquisa Rápida<h1>
    Nome <input type="text" name="txtnome" size="30" maxlength="30"><br>
    Gênero <input type="text" name="txtgenero" size="20" maxlength="20"><br>
    Cor <input type="text" name="txtcor" size="10" maxlength="10"><br>
    Idade <input type="text" name="txtidade" size="3" maxlength="3"><br>
    <center><br><input type="submit" name="btnenviar" value="Enviar" onclick='enviar()'/></center>
    <?php
    include('conexao.php');
    if(isset($_POST['btnenviar'])){
        $nome = $_POST['txtnome'];
        $genero = $_POST['txtgenero'];
        $cor= $_POST['txtcor'];
        $idade = $_POST['txtidade'];
        $sql="insert into tbprototipo (nome,genero,cor,idade) values('$nome','$genero','$cor','$idade')";
        if (!empty($nome)) {
            mysqli_query($conexao, $sql);
            echo "Dados salvos com sucesso!";
            } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conexao);
            }
        mysqli_close($conexao);
    }
?>

</form>
</div>
</body>


</html>
