<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <title>CN Problem</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
    <script src="js/jquery.js"></script>

  </head>

  <body>

    <div class="container-fluid" id="principal">
      <div class="row">
        <div class="col-md-12">
          <form role="form">
           <div class="form-group">
              <div class="row" id="alinhamento">
                <div class="col-md-4" id="alinha">
                 <label for="dist">
                   Length:
                 </label>
                 <select class="form-control" id="dist" required>
                   <option name="dist" disabled selected>Select a length</option>
                   <option name="dist" value="10 Km">10 Km</option>
                   <option name="dist" value="100 Km">100 Km</option>
                   <option name="dist" value="500 Km">500 Km</option>
                   <option name="dist" value="1000 Km">1000 Km</option>
                 </select>
                </div>
               <div class="col-md-4" id="alinha">
                 <label for="velocidade">
                   Rate:
                 </label>
                 <select class="form-control" id="vel" required>
                   <option name="vel" disabled selected>Select a rate</option>
                   <option name="vel" value="512 Kbps">512 Kbps</option>
                   <option name="vel" value="1 Mbps">1 Mbps</option>
                   <option name="vel" value="10 Mbps">10 Mbps</option>
                   <option name="vel" value="100 Mbps">100 Mbps</option>
                 </select>
                </div>
                <div class="col-md-4" id="alinha">
                 <label for="tamanho">
                   Packet Size:
                 </label>
                 <select class="form-control" id="tampacote" required>
                   <option name="tampacote" disabled selected>Select a size</option>
                   <option name="tampacote" value="100 Bytes">100 Byte</option>
                   <option name="tampacote" value="500 Bytes">500 Byte</option>
                   <option name="tampacote" value="1 Kbytes">1 KByte</option>
                 </select>
               </div>
             </div>

             <div align="center" style="padding:10px 0;">
               <canvas width="800" height="220" class="img-responsive" id="app-screen">
                 <script>
                    var situ = 1;
                    var canvas = document.getElementById('app-screen');
                    var context = canvas.getContext('2d');
                    var imagem = new Image();
                    var imagem2 = new Image();
                    var imagem3 = new Image();
                    var imagem4 = new Image();
                    var roteador = new Image();
                    // var setaprop = new Image();
                    // var setatrans = new Image();

                    if(situ==1){

                      imagem.src = 'img/cenario1.png';

                      imagem.onload = function() {
                        context.drawImage(imagem, 0, 0, canvas.width, canvas.height);
                      }

                      imagem2.src= 'img/cartinha.png';

                      imagem2.onload = function() {
                        context.drawImage(imagem2, 25, 145, 40, 40);
                      }

                      imagem3.src= 'img/cartinha.png';

                      imagem3.onload = function() {
                        context.drawImage(imagem3, 25, 145, 40, 40);
                      }

                      imagem4.src= 'img/cartinha.png';

                      roteador.src= 'img/roteador.png';

                      roteador.onload = function() {
                        context.drawImage(roteador, 140, 112, 120, 100);
                        context.drawImage(roteador, 550, 112, 120, 100);
                      }

                      // setaprop.src= 'img/prop.png';
                      // setatrans.src= 'img/transmissao.png';
                    }
                  </script>
               </canvas>
             </div>
             <div class="text-center" id="imagens">
               <a class="btn-ctrl">
                 <img src="img/btn_play.png" title="play" onclick="calcular()">
               </a>
               <a class="btn-ctrl">
                 <img src="img/btn_reset.png" title="reset" onclick="resetar();esconder_resultado('resultado')">
               </a>
             </div>
           </div>
          </form>
          <p id="resultado" class="resultado"></p>
        </div>
     </div>
    </div>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/animacao.js"></script>
    <script src="js/situacao1.js"></script>
    <script src="js/situacao2.js"></script>
    <script src="js/atualizacao.js"></script>
  </body>
</html>
