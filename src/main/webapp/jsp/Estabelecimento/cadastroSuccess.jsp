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
		$("#cadastro-title").html("<p><i class= 'glyphicon glyphicon-envelope'></i> Parabéns! :)</p>");
	</script>
</head>
<div class="col-md-12 text-center title">
	<h2><b>Seu estabelecimento está cadastrado!</b></h2>
  	<h2><span>Só precisamos confirmar seu endereço de e-mail</span></h2>
  	<h2><b> Enviamos um link para o endereço  <em class="mensagem-email"> <mtw:out value="email"></mtw:out> </em></b></h2>
	<h2><span>Por favor, verifique se nossa mensagem foi entregue.</span></h2>
	<h1>Obrigado!</h1>
</div>
