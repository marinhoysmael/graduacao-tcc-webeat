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
			$("#cadastro-title").html("<i class= 'glyphicon glyphicon-cutlery'></i> - dados do estabelecimento");
			$("#submitFomrEstabelecimento").click(function form(){
				$('.progress').show();
				var form = $("#formEstabelecimento");
		    	nome  =  $(form).find("input[name$='nome']").val();
		    	email  =  $(form).find("input[name$='email']").val();
		    	telefone  =  $(form).find("input[name$='telefone']").val();
		    	celular  =  $(form).find("input[name$='celular']").val();
		    	CNPJ  =  $(form).find("input[name$='CNPJ']").val();
		 		
		    	$.post("EstabelecimentoAction.setEstabelecimento.mtw",
		    			{
		    				'nome': nome,
			    			'email': email,
			    			'telefone': telefone,
			    			'celular': celular,
			    			'CNPJ': CNPJ
			    			
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
	<mtw:form id="formEstabelecimento" method="post">
		<div class="panel panel-default panel-form-cadastro">
			<div class="panel-heading">
				<div class="form-group">
					<label for="nome">Nome</label>
					<mtw:outError field="nome">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-cutlery"></i></div>
						<mtw:input type="text" name="nome" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="email">Email para contato</label>
					<mtw:outError field="email">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></div>
						<mtw:input type="text" name="email" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="telefone">Telefone </label>
					<mtw:outError field="telefone">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></div>
						<mtw:input type="text" name="telefone" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="celular">Celular </label>
					<mtw:outError field="celular">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></div>
						<mtw:input type="text" name="celular" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
					<label for="CNPJ">CNPJ </label>
					<mtw:outError field="CNPJ">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></div>
						<mtw:input type="text" name="CNPJ" extra="class=form-control"	size="50" maxlength="50" />
					</div>
				</div>
			</div>
			<div class="panel-body formulario-titulo">
				<div class="progress" style="display: none;">
				  <div class="indeterminate"></div>
				</div>
				<a style="color: #FFF" id="submitFomrEstabelecimento" href="javascript:void(0);">Próximo passo..<i class="glyphicon glyphicon-hand-right icone"></i></a>
			</div>
		</div>
	</mtw:form>
</mtw:bean>