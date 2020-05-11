<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<head>

</head>
<div class="row">
	<section class="content-header">
		<h1 id="bodyTitulo">Gerenciamento de Produtos <small>Faça alterações em seus produtos como: cadastrar, alterar ou remover...</small></h1>
	</section>
	<!-- FORMULARIO DE PRODUTO -->
	<div class="col-md-6" id="divFormularioProduto">
		<jsp:include page="../Produto/formulario.jsp"></jsp:include>
	</div>
	<!-- LISTA DE PRODUTOS -->
	<div class="col-md-6" id="divListaProdutos">
		<jsp:include page="../Produto/lista.jsp"></jsp:include>
	</div>
</div>

