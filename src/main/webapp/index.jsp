<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<head>
	<style type="text/css">
		.erro-mensage{
			color: #f55858;
		  	font-family: inherit;
		  	font-style: italic;
		  	font-weight: bold;
		  	font-size: smaller;
		}
		
		#cadastroTitle{
  			font-weight: bold;
  			text-transform: uppercase;
  			
		}
	</style>
    <meta charset="UTF-8" />
<!--     <link rel="shortcut icon" href="images/1.png"> -->
    
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	
    <title>Eat</title>
        
    <!-- Bootstrap Stylesheet -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Google Font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Normailize Stylesheet -->
    <link rel="stylesheet" href="css/normalize.min.css">

    <!-- Main Styles -->
    <link rel="stylesheet" href="css/templatemo_style.css">
	<script src="js/jquery.js"></script>
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

	
	<script type="text/javascript">
// 		GERAR LISTA DE ESTADOS
		$( document ).ready(function() {
		    console.log( "jquery carregado" );
		    $("#botao_cadastrar").click(function() {
				$.get("EstabelecimentoAction.cadastro.mtw", function(data) {
					$("#conteudo-form-cadastro").html( data );
				});
			});
		});
	</script>
</head>
<body>
    <header class="site-header" id="top">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#main-menu">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-bars"></i>
                        </button>
                        <div class="logo-wrapper">
                            <a class="navbar-brand" href="#">
                                <em>eat</em> app  
                                <span class="logo-s"></span>
                            </a>
                        </div>  
                    </div>
                    <div class="collapse navbar-collapse" id="main-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <span class="nav-s"></span>
                            <li class="active"><a href="#top">Home</a></li>
                            <li><a href="#product-inner">Inovação</a></li>
                            <li><a href="#portfolio">Galeria</a></li>
                            <li><a href="#promotion">Recursos</a></li>
                            <li><a href="#contact">Contatos</a></li>
							<li><a href="login.jsp" id="login">Login</a></li>
						</ul>
                    </div>
                </div> 
            </div>
        </nav>
    </header>
	<!--MODAL MESSAGEM -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Modal title</h4>
					</div>
					<div class="modal-body" id="myModalMensagem">...</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
					</div>
				</div>
			</div>
		</div>
	<!--FORMULARIO DE CADASTRO DE ESTABELECIMENTO  -->
	<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" id="myModalMensagem">
					<div class="panel panel-primary">
						<div class="panel-heading" id='cadastroTitle'>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h1 id="cadastro-title"></h1>
						</div>
						<div class="panel-body" id="conteudo-form-cadastro">
							aguarde...
						<!--CARREGAR VIA JQUERY-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--FIM DO FORMULARIO FORMULÁRIO DE CADASTRO DE RESTAURANTE  -->

	
    <div class="top-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="image-holder">
                        <img src="images/1.png" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <h4>Eat App</h4>
                    <h3>SIMPLES E DINÂMICO</h3>
                    <h5>Feito para você e sua empresa!</h5>
                    <p><a rel="nofollow" href="">Eat App</a>  é bem mais que uma simples solução para o mercado.<br> É um novo conceito de interação humana.<br> Por meio dele, aproximamos você das pessoas que você ama. Temos como objetivo promover o convívio social e facilitar a relação pessoal com o mundo. 
                    <br><br>Faça parte deste conceito. Cadastre-se e veja as oportunidades crescerem a cada instante.</p>
                    <a href="javascript:void(0);" id= "botao_cadastrar" rel="nofollow" class="button">Cadastrar-me Agora</a>
                </div>
            </div>
        </div>
    </div>

    <div id="products">
        <div class="container">
            <div class="row" id="product-inner">
                <div class="col-md-4 product-item text-center">
                    <div class="image-holder">
                        <img src="images/2.png" alt="">
                    </div>
                    <h4>RESGISTRE TUDO</h4>
                </div>
                <div class="col-md-4 text-center">
                    <div class="circle">
                        <h3>O QUE É NOVIDADE<br> PARA VOCÊ?</h3>
                    </div>
                </div>
                <div class="col-md-4 product-item text-center">
                    <div class="image-holder">
                        <img src="images/3.png" alt="">
                    </div>
                    <h4>DESIGN CRIATIVO</h4>
                </div>
            </div>
        </div>
    </div>

    <div id="portfolio">
        <div class="container" id="Grid">
            <div class="row">
                <div class="col-md-12 text-center title">
                    <h2>UMA SIMPLES DEMONSTRAÇÃO</h2>
                    <span>DE TUDO QUE TEMOS FEITO</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="filters">
                        <li class="active filter" data-filter="all">Todas</li>
                        <li class="filter" data-filter="restaurante">Restaurante</li>
                        <li class="filter" data-filter="produto">Produtos</li>
                        <li class="filter" data-filter="interatividade">Interatividade</li>
                        <li class="filter" data-filter="comanda">Comanda</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 mix restaurante">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/1.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/1.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>LISTA DE RESTAURANTES</h4>
                        <span>Restaurantes</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix interatividade">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/2.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/2.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>MESAS DISPONIVEIS</h4>
                        <span>Interatividade</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix produto">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/3.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/3.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>CARDAPIO INTERATIVO</h4>
                        <span>Produtos</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix comanda">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/4.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/4.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>DETALHES DO CONSUMO</h4>
                        <span>Comanda</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix interatividade">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/5.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/5.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>QUANTIDADE CERTA</h4>
                        <span>Interatividade</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix comanda">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/6.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/6.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>INFORMAÇÕES DETALHADAS</h4>
                        <span>Comanda</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix restaurante">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/7.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/7.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>DETALHES SOBRE RESTAURANTE</h4>
                        <span>Restaurante, Detalhes</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mix produto">
                    <div class="work-item">
                        <div class="image-holder">
                            <img src="images/gallery/8.png" alt="">
                            <div class="overlay">
                                <a href="images/gallery/8.png" data-rel="lightbox">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <h4>LISTA DE PRATOS DISPONIVEIS</h4>
                        <span>Produtos</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="bottom-section">
        <div class="container" id="promotion">
            <div class="row">
                <div class="col-md-6">
                    <div class="left-one text-center">
                        <h1>A INOVAÇÃO <em>COMEÇA</em> POR <em>VOCÊ</em></h1>
                        <div class="image-holder">
                            <img src="images/4.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-one">
                        <div class="title text-right">
                            <h3>RECURSOS</h3>
                            <span>PENSADOS PARA O SEU NEGÓCIO</span>
                        </div>
                        <div class="text-left">
                            <h4>Feito para ser funcional</h4>
                            <ul>
                                <li>Facilidade na hora de entregar um pedido.</li>
                                <li>Comodidade para você passar mais tempo com quem realmente importa.</li>
                                <li>Sistema deliver para um melhor atendimento.</li>
                                <li>Publicidade direto para o cliente.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-md-offset-4">
                    <div class="video-holder text-center">
                        <h3>Video de demonstração</h3>
                             <iframe width="853" height="430" src="//www.youtube.com/embed/pAgnJDJN4VA" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" id="contact">
            <div class="row">
                <div class="col-md-5">
                    <div class="contact-form">
                        <h2>ENTRE EM CONTATO</h2>
                        <span>DEIXE UMA MENSAGEM</span>
                        <form action="#" method="post">
                            <div class="row">
                                <fieldset class="col-md-6">
                                    <input type="text" name="name" id="name" placeholder="Nome...">
                                </fieldset>
                                <fieldset class="col-md-6">
                                    <input type="email" name="email" id="emailm" placeholder="Endereço Email...">
                                </fieldset>
                                <fieldset class="col-md-12">
                                    <textarea name="message" id="message" placeholder="Messagem..."></textarea>
                                </fieldset>
                                <fieldset class="col-md-12">
                                    <input type="submit" id="button-message" value="Enviar Mensagem">
                                </fieldset>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="right-contact text-center">
                        <h1>ESTAMOS AQUI PARA AJUDAR VOCÊ!</h1>
                        <div class="image-holder margin-bottom">
                            <img src="images/5.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
<!--             <div class="row"> -->
<!--                 <div class="col-md-9"> -->
<!--                 	<h3>Empresas associadas</h3> -->
<!--                     <div class="map-holder"> -->
<!--                         <div id="map_canvas" class="map-canvas"></div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <p>Copyright © 2015 Personal Software | Design: <a href="http://www.templatemo.com">templatemo</a></p>
                </div>
                <div class="col-md-6 col-sm-6">
                    <ul class="social">
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-instagram"></a></li>
                        <li><a href="#" class="fa fa-google-plus"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>    
    

<!--     Google Map -->
<!--     <script src="http://maps.google.com/maps/api/js?sensor=true"></script> -->
<!--     <script src="js/jquery.gmap3.min.js"></script> -->
    
<!--     Google Map Init -->
    <script type="text/javascript">
//         jQuery(function($){
//             $('#map_canvas').gmap3({
//                 marker:{
//                     address: '16.8496189,96.1288854' 
//                 },
//                     map:{
//                     options:{
//                     zoom: 15,
//                     scrollwheel: false,
//                     streetViewControl : true
//                     }
//                 }
//             });
//         });
     </script>

</body>
</html>