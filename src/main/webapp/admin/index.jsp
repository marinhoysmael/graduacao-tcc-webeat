<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Eat App | Admin</title>
	    
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	   
	    <!-- Bootstrap 3.3.2 -->
	    <link href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	   
	    <!-- Font Awesome Icons -->
	    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	   
	    <!-- Ionicons -->
	    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	   
	    <!-- Theme style -->
	    <link href="admin/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
	    
	    <!-- AdminLTE Skins-->
	    <link href="admin/dist/css/skins/skin-blue.min.css" rel="stylesheet" type="text/css" />
		
		<!-- REQUIRED JS SCRIPTS -->
	    <!-- jQuery 2.1.3 -->
	    <script src="admin/plugins/jQuery/jQuery-2.1.3.min.js"></script>
	    <!-- Bootstrap 3.3.2 JS -->
	    <script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	    <!-- AdminLTE App -->
	    <script src="admin/dist/js/app.min.js" type="text/javascript"></script>
		<style type="text/css">
			.user-panel>.image>img {
				  width: 88px;
				  height: 100%;
				  margin-left: 0px;
				  margin-bottom: 8px;
			}
			.skin-blue .main-header .logo {
  				background-color: #1976D2;
  			}
  			.skin-blue .main-header .navbar {
				background-color: #1E88E5;
			}
			
			.skin-blue .wrapper, .skin-blue .main-sidebar, .skin-blue .left-side {
				background: #000000;
			}
			
		</style>
		
		<script type="text/javascript">
			$(document).ready(function() {
			    console.log('ADMINISTRACAOACTION.INDEX: JAVASCRIPT CARREGADO!');
			    
			    //EVENTO - PAINEL DE GERENCIAMENTO DE PRODUTO
			    $('#botaoProduto').click(function(){
			    	//CARREGANDO PAINEL PRODUTO
			    	$("#divProgresso").show();
			    	estabelecimentoID = $("#estabelecimentoID").val();
			    	console.log("ESTABELECIMENTO-ID", estabelecimentoID);
			    	$.get("ProdutoAction.painel.mtw?estabelecimentoID="+estabelecimentoID, function(data) {
						$("#divConteudoDocumento").html( data );
				    	$("#divProgresso").hide();
					});
			    });
			    
			    //EVENTO - PAINEL DE GERENCIAMENTO DE PRODUTO-CATEGORIA
			    $('#botaoProdutoCategoria').click(function(){
			    	//CARREGANDO PAINEL PRODUTO-CATEGORIA
			    	$("#divProgresso").show();
			    	
			    	estabelecimentoID = $("#estabelecimentoID").val();
			    	console.log("ESTABELECIMENTO-ID", estabelecimentoID);
			    	
			    	$.get("ProdutoCategoriaAction.painel.mtw?estabelecimentoID="+estabelecimentoID, function(data) {
						$("#divConteudoDocumento").html( data );
				    	$("#divProgresso").hide();
					});
			    });
			});
		</script>
	</head>
	<body class="skin-blue">
		<input id="estabelecimentoID" type="hidden" value="${estabelecimento.ID}">
		<input id="proprietarioID" type="hidden" value="${proprietario.ID}">
		<div class="wrapper">
			<!-- Main Header -->
			<header class="main-header">
		        <!-- Nome do Estabelecimento -->
		        <a href="#" class="logo"><b>Web eat</b>App</a>
	
	        	<!-- Header Navbar -->
	       		<nav class="navbar navbar-static-top" role="navigation">
	            	<!-- Sidebar toggle button-->
	          		<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
	            		<span class="sr-only">Toggle navigation</span>
	          		</a>
		            <!-- Navbar Right Menu -->
		            <div class="navbar-custom-menu">
	            		<ul class="nav navbar-nav">
		              	<!-- Messages: style can be found in dropdown.less-->
		              	<li class="dropdown messages-menu">
	                		<!-- Menu toggle button -->
	                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
	                 			<i class="fa fa-envelope-o"></i>
	                  			<span class="label label-success">4</span>
	                		</a>
	                		<ul class="dropdown-menu">
		                  		<li class="header">You have 4 messages</li>
		                  		<li>
		                    		<!-- inner menu: contains the messages -->
		                    		<ul class="menu">
		                      			<li><!-- start message -->
		                        			<a href="#">
			                          			<div class="pull-left">
			                            			<!-- User Image -->
			                            			<img src="admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
			                          			</div>
			                         			<!-- Message title and timestamp -->
			                          			<h4>                            
			                            			Support Team
			                            			<small><i class="fa fa-clock-o"></i> 5 mins</small>
			                          			</h4>
			                          			<!-- The message -->
			                          			<p>Why not buy a new awesome theme?</p>
		                        			</a>
		                      			</li><!-- end message -->                      
		                    		</ul><!-- /.menu -->
		                  		</li>
		                  		<li class="footer"><a href="#">See All Messages</a></li>
	                		</ul>
	              		</li><!-- /.messages-menu -->
	
	              		<!-- Notifications Menu -->
		              	<li class="dropdown notifications-menu">
			            	<!-- Menu toggle button -->
			                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-bell-o"></i>
			                  	<span class="label label-warning">10</span>
			                </a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification --> 
											<a href="#"> 
												<i class="fa fa-users text-aqua"></i> 5 new members joined today
											</a>
										</li>
										<!-- end notification -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>
						<!-- Tasks Menu -->
						<li class="dropdown tasks-menu">
							<!-- Menu Toggle Button -->
		                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
	                  			<i class="fa fa-flag-o"></i>
	                  			<span class="label label-danger">9</span>
	                		</a>
	                		<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
	                  			<li>
				                    <!-- Inner menu: contains the tasks -->
				                    <ul class="menu">
				                    	<li><!-- Task item -->
					                        <a href="#">
					                        	<!-- Task title and progress text -->
					                          	<h3>
													Design some buttons
					                            	<small class="pull-right">20%</small>
					                          	</h3>
					                          	<!-- The progress bar -->
					                          	<div class="progress xs">
					                            	<!-- Change the css width attribute to simulate progress -->
					                            	<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
					                              		<span class="sr-only">20% Complete</span>
					                            	</div>
					                          	</div>
					                        </a>
				                      	</li><!-- end task item -->                      
				                    </ul>
               					</li>
			                  	<li class="footer">
			                    	<a href="#">View all tasks</a>
			                  	</li>
                			</ul>
	              		</li>
	              		<!-- User Account Menu -->
	              		<li class="dropdown user user-menu">
	                		<!-- Menu Toggle Button -->
	                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                  		<!-- The user image in the navbar-->
		                  		<img src="admin/dist/img/default-user.png" class="user-image" alt="User Image"/>
		                  		<!-- hidden-xs hides the username on small devices so only the image appears. -->
		                  		<span class="hidden-xs">${proprietario.nome}</span>
	                		</a>
	                		<ul class="dropdown-menu">
	                 			<!-- The user image in the menu -->
	                  			<li class="user-header">
		                    		<img src="admin/dist/img/default-user.png" class="img-circle" alt="User Image" />
				                    <p>
				                     ${proprietario.nome} - Proprietário
				                      <small>Member since Nov. 2012</small>
				                    </p>
	                  			</li>
			                  	<!-- Menu Body -->
			                  	<li class="user-body">
				                    <div class="col-xs-4 text-center">
				                    	<a href="#">Followers</a>
				                    </div>
				                    <div class="col-xs-4 text-center">
				                    	<a href="#">Sales</a>
				                    </div>
				                    <div class="col-xs-4 text-center">
				                    	<a href="#">Friends</a>
				                    </div>
			                  	</li>
	                  			<!-- Menu Footer-->
	                  			<li class="user-footer">
	                    			<div class="pull-left">
	                      				<a href="#" class="btn btn-default btn-flat">Profile</a>
	                    			</div>
	                    			<div class="pull-right">
	                      				<a href="#" class="btn btn-default btn-flat">Sign out</a>
	                    			</div>
	                  			</li>
	                		</ul>
	              		</li>
            		</ul>
	          	</div>
        	</nav>
		</header>
		<!-- BARRA LATERAL -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
	        <section class="sidebar">
	        	<!-- PERFIL -->
	        	<div class="user-panel">
	        		<!-- IMAGEM DE PERFIL -->
	        		<div class="pull-left image">
		           		<img src="admin/dist/img/default-user.png" class="img-circle" alt="User Image" />
<%-- 		           		<img src="${PASSAR O PARAMETRO DA IMAGEM}" class="img-circle" alt="User Image" /> --%>
		            </div>
		            <div class="pull-left info">
		              <p>${estabelecimento.nome}</p>
		              <!-- Status -->
		              <a href="#"><i class="fa fa-circle text-success"></i>${estabelecimento.situacao}</a>
		            </div>
		          </div>
	
	          <!-- search form (Optional) -->
	          <form action="#" method="get" class="sidebar-form">
	            <div class="input-group">
	              <input type="text" name="q" class="form-control" placeholder="Pesquisar..."/>
	              <span class="input-group-btn">
	                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
	              </span>
	            </div>
	          </form>
	          <!-- /.search form -->
	
	          <!-- MENU LATERAL -->
	          <ul class="sidebar-menu">
	            <li class="header"><i class="fa fa-check-square"></i> PEDIDOS</li>
	            <!-- Optionally, you can add icons to the links -->
	            <li><a href="#"><i class="fa fa-truck"></i>Delivery</a></li>
	            <li><a href="#"><i class="fa fa-cutlery"></i>Aqui</a></li>
	            <li class="treeview">
	              <a href="#"><i class="fa fa-gears"></i><span>Gerenciamento</span> <i class="fa fa-angle-left pull-right"></i></a>
	              <ul class="treeview-menu">
	                <li><a id="botaoProduto" href="javascript:void(0);">Produtos</a></li>
	                <li><a id="botaoProdutoCategoria" href="javascript:void(0);">Produto - categorias</a></li>
	                <li><a id="botaoMesa" href="javascript:void(0);">Mesas</a></li>
	              </ul>
	            </li>
	          </ul><!-- /.sidebar-menu -->
	        </section>
	        <!-- /.sidebar -->
	      </aside>
	
	      <!-- CORPO DO DOCUMENTO. -->
			<div class="content-wrapper">
			  	<div id="divProgresso" style="display: none;">
				  	<jsp:include page="/jsp/progresso.jsp"></jsp:include>
			  	</div>
		        <!-- CONTEUDO DO CORPO -->
		        <section class="content">
		        	<div id="divConteudoDocumento">
							          
		          	</div>
		        </section><!-- /.content -->
	      </div><!-- /.content-wrapper -->
	
	      <!-- Main Footer -->
	      <footer class="main-footer">
	        <!-- To the right -->
	        <div class="pull-right hidden-xs">
	          Anything you want
	        </div>
	        <!-- Default to the left --> 
	        <strong>Copyright &copy; 2015 <a href="#">Company</a>.</strong> All rights reserved.
	      </footer>
	
	    </div><!-- ./wrapper -->

  </body>
</html>