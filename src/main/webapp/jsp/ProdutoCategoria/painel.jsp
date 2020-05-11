<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>

<head>

</head>


<div class="row">
	<section class="content-header">
		<h1 id="bodyTitulo">Gerenciamento de Categorias <small>Crie, edite ou remova categorias relacionadas a um produto...</small></h1>
	</section>
	<!-- FORMULARIO DE PRODUTO-CATEGORIA -->
	<div class="col-md-6" id="divFormularioProdutoCategoria">
		<jsp:include page="../ProdutoCategoria/formulario.jsp"></jsp:include>
	</div>
	<!-- LISTA DE PRODUTOS-CATEGORIA -->
	<div class="col-md-6" id="divListaProdutoCategorias">
		<jsp:include page="../ProdutoCategoria/lista.jsp"></jsp:include>
	</div>
</div>