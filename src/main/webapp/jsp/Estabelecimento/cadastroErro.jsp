<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>

<head>
	<style type="text/css">
		.mensagem-email{
		  color: #f55858;
		}
	</style>
	<script type="text/javascript">
		$("#cadastro-title").html("<p>Erro :|</p>");
	</script>
</head>
<div class="col-md-12 text-center title">
	<h2><b>Indentificamos um usuário com o mesmo endereço e-mail fornecido!</b></h2>
  	<h2><span>Caso seja você, é simple, faça um login!</span></h2>
  	<h2><b>Se você é novo aqui, terá que se cadastrar com um email diferente.</b></h2>
	
	<h3><span>Este email ja está cadastrado:</span><em class="mensagem-email"> <mtw:out value="email"></mtw:out> </em></h3>
	
	<h1>Agradecemos sua compreensão!</h1>
</div>
