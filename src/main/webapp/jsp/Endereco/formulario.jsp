<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>


<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<style type="text/css">
		.erro-mensage{
			color: #f55858;
			background-color: #FFF;
		}
		
		.icone{
			float: right;
		}
		.formulario-titulo{
			  text-align: center;
			  font-weight: bold;
			  font-size: 20px;
			  background-color: #1E90FF;
			  color: #fff;
		}
		
		.panel-form-cadastro{
			border-color: #1E90FF;
		}
		
		.panel-form-cadastro .panel-heading{
			background-color: #FFF;
		}
		
		.progress {
			  position: relative;
			  height: 4px;
			  display: block;
			  width: 100%;
			  background-color: #acece6;
			  -webkit-border-radius: 2px;
			  -moz-border-radius: 2px;
			  border-radius: 2px;
			  background-clip: padding-box;
			  margin: 0.5rem 0 1rem 0;
			  overflow: hidden;
			}
						
		/*COR DA BARRA*/
		.progress .indeterminate {
		  background-color: #f55858;
		}
		
		.progress .indeterminate:before {
			content: '';
			position: absolute;
			background-color: inherit;
			top: 0;
			left: 0;
			bottom: 0;
			will-change: left, right;
			-webkit-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
			-moz-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
			-ms-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
			-o-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
			animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
		}
		
		.progress .indeterminate:after {
		  content: '';
		  position: absolute;
		  background-color: inherit;
		  top: 0;
		  left: 0;
		  bottom: 0;
		  will-change: left, right;
		  -webkit-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
		  -moz-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
		  -ms-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
		  -o-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
		  animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
		  -webkit-animation-delay: 1.15s;
		  -moz-animation-delay: 1.15s;
		  -ms-animation-delay: 1.15s;
		  -o-animation-delay: 1.15s;
		  animation-delay: 1.15s;
		  
		}
		
		@-webkit-keyframes indeterminate {
		  0% {
		    left: -35%;
		    right: 100%; }
		
		  60% {
		    left: 100%;
		    right: -90%; }
		
		  100% {
		    left: 100%;
		    right: -90%; } }
		
		@-moz-keyframes indeterminate {
		  0% {
		    left: -35%;
		    right: 100%; }
		
		  60% {
		    left: 100%;
		    right: -90%; }
		
		  100% {
		    left: 100%;
		    right: -90%; } }
		
		@keyframes indeterminate {
		  0% {
		    left: -35%;
		    right: 100%; }
		
		  60% {
		    left: 100%;
		    right: -90%; }
		
		  100% {
		    left: 100%;
		    right: -90%; } }
		
		@-webkit-keyframes indeterminate-short {
		  0% {
		    left: -200%;
		    right: 100%; }
		
		  60% {
		    left: 107%;
		    right: -8%; }
		
		  100% {
		    left: 107%;
		    right: -8%; } }
		
		@-moz-keyframes indeterminate-short {
		  0% {
		    left: -200%;
		    right: 100%; }
		
		  60% {
		    left: 107%;
		    right: -8%; }
		
		  100% {
		    left: 107%;
		    right: -8%; } }
		
		@keyframes indeterminate-short {
		  0% {
		    left: -200%;
		    right: 100%; }
		
		  60% {
		    left: 107%;
		    right: -8%; }
		
		  100% {
		    left: 107%;
		    right: -8%; } }
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			
			//EVENTO PARA CARREGAR LISTA DE ESTADOS
			$.get('EnderecoAction.estados.mtw', function( data ) {
				$('#estados-barra-espera').show();
				$("#estados").html("<option></option>");
				$.each( data.estados, function( key, value ) {
					  $("#estados").append('<option id='+value.ID+' value='+value.nome+'>'+value.nome+'</option>');
				});
				$('#estados-barra-espera').hide();
			});
			
			//EVENTO PARA CARREGAR LISTA DE CIDADES
			$("#estados").click(function(){
				$('#cidades-barra-espera').show();
				id = $(this).find(':selected').attr("id");

				if(id != undefined){
					$.get("EnderecoAction.cidades.mtw", {'ID':id}, function(data) {
						$( "#cidades" ).html("<option></option>");
						$.each(data.cidades, function( index, value ) {
							$( "#cidades" ).append("<option>"+$(value)[0].nome+"</option>");
						});
						$('#cidades-barra-espera').hide();
					});					
				}
				
			});
			
			//EVENTO PARA MUDAR O TITULO DO FORMULARIO
			$("#cadastro-title").html("<i class= 'glyphicon glyphicon-home'></i> - endereço do estabelecimento");
			
			//EVENTO PARA SUBMETER O FORMULARIO AO SERVIDOR
			$("#submitFormEndereco").click(function form(){
				$('#loaderSubmit').show();
				var form = $("#formEndereco");
				logradouro  =  $(form).find("input[name$='logradouro']").val();
				numero  =  $(form).find("input[name$='numero']").val();
				bairro  =  $(form).find("input[name$='bairro']").val();
				complemento  =  $(form).find("input[name$='complemento']").val();
				referencia  =  $(form).find("input[name$='referencia']").val();
				cep  =  $(form).find("input[name$='cep']").val();
				estado  =  $("#estados").val();
				cidade  =  $("#cidades").val();
		 						
		    	$.post("EstabelecimentoAction.setEndereco.mtw",
		    			{
		    				'logradouro': logradouro,
			    			'numero': numero,
			    			'bairro': bairro,
			    			'complemento': complemento,
			    			'referencia': referencia,
			    			'cep': cep,
			    			'estado': estado,
			    			'cidade': cidade
			    			
		    			},
		    			function(data, status){
		   		 			$("#conteudo-form-cadastro").html(data);
		    		
		    			}
		    	);	
		    	return false;
		    });
		});
	</script>
</head>


<mtw:bean value="estabelecimento">
	<mtw:form id="formEndereco" method="post">
		<div class="panel panel-default panel-form-cadastro">
			<div class="panel-heading">
				<div class="form-group">
					<label for="logradouro">Logradouro</label>
					<mtw:outError field="logradouro">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-road"></i></div>
						<mtw:input type="text" name="logradouro" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="numero">Número </label>
					<mtw:outError field="numero">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-sound-5-1"></i></div>
						<mtw:input type="text" name="numero" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
					<label for="bairro">Bairro </label>
					<mtw:outError field="bairro">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></div>
						<mtw:input type="text" name="bairro" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="complemento">Complemento </label>
					<mtw:outError field="complemento">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-info-sign"></i></div>
						<mtw:input type="text" name="complemento" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
					<label for="referencia">Refêrencia </label>
					<mtw:outError field="referencia">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-info-sign"></i></div>
						<mtw:input type="text" name="referencia" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
					<label for="cep">CEP </label>
					<mtw:outError field="cep">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></div>
						<mtw:input type="text" name="cep" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
					<label for="estado">Estado </label>
					<!-- BARRA DE ESPERA -->
					<div id="estados-barra-espera" class="progress" style="display: none;">
						<div class="indeterminate"></div>
					</div>
					<mtw:outError field="estado">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></div>
						<select name="estado" id="estados" class="form-control">
							<!--CARREGAR VIA JQUERY-->
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="cidade">Cidade </label>
					<!-- BARAR DE ESPERA -->
					<div id="cidades-barra-espera" class="progress" style="display: none;">
						<div class="indeterminate"></div>
					</div>
					<mtw:outError field="cidade">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></div>
						<select name="cidade" id="cidades" class="form-control">
							<!--CARREGAR VIA JQUERY-->
						</select>
					</div>
				</div>
			</div>
			<div class="panel-body formulario-titulo">
				<div id="loaderSubmit" class="progress" style="display: none;">
				  <div class="indeterminate"></div>
				</div>
				<a style="color: #FFF" id="submitFormEndereco" href="javascript:void(0);">Próximo passo..<i class="glyphicon glyphicon-hand-right icone"></i></a>
			</div>
		</div>
	</mtw:form>
</mtw:bean>