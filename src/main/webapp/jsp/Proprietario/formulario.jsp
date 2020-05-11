<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
	

<head>
	<style type="text/css">
		.erro-mensage{
			color: #f55858;
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
    <meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<script type="text/javascript">
			$(document).ready(function() {
				$("#cadastro-title").html("<i class= 'glyphicon glyphicon-user'></i> - Dados do Proprietário");
				
				$("#submitFormProprietario").click(function form(){
					$('.progress').show();
					var form = $("#formProprietario");
			    	nome  =  $(form).find("input[name$='nome']").val();
			    	email  =  $(form).find("input[name$='email']").val();
			    	cpf  =  $(form).find("input[name$='CPF']").val();
			    	senha  =  $(form).find("input[name$='senha']").val();
			    	senhaConfirm  =  $(form).find("input[name$='senhaConfirm']").val();
			 		
			    	$.post("EstabelecimentoAction.setProprietario.mtw",
			    			{
			    				'nome': nome,
				    			'email': email,
				    			'CPF': cpf,
				    			'senha': senha,
				    			'senhaConfirm': senhaConfirm
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
<mtw:bean value="proprietario">
	<mtw:form id="formProprietario" method="post">
		<div class="panel panel-default panel-form-cadastro">
			<div class="panel-heading">
				<div class="form-group">
					<label for="nome">Nome Completo </label>
					<mtw:outError field="nome">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
						<mtw:input type="text" name="nome" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="email">Email </label>
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
					<label for="CPF">CPF </label>
					<mtw:outError field="CPF">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></div>
						<mtw:input type="text" name="CPF" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="senha">Senha </label>
					<mtw:outError field="senha">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-eye-close"></i></div>
						<mtw:input type="password" name="senha" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
				<div class="form-group">
					<label for="senhaConfirm">Confirmar Senha </label>
					<mtw:outError field="senhaConfirm">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<div class="input-group-addon"><i class="glyphicon glyphicon-eye-close"></i></div>
						<mtw:input type="password" name="senhaConfirm" extra="class=form-control"	size="50" maxlength="50" />
						<div class="input-group-addon" style="font-size: 9px; background-color: #FFF;" title="Obrigatório"><i class="glyphicon glyphicon-ok"></i></div>
					</div>
				</div>
<!-- 				<button type="submit" id="botao-cadastrar-professor" value="Cadastrar" class="btn btn-default">Cadastrar Meus Dados</button> -->
			</div>
			<div class="panel-body formulario-titulo">
				<div class="progress" style="display: none;">
				  <div class="indeterminate"></div>
				</div>
				<a style="color: #FFF" id="submitFormProprietario" href="javascript:void(0);">Próximo passo..   <i class="glyphicon glyphicon-hand-right icone"></i></a>
			</div>
		</div>
	</mtw:form>
</mtw:bean>