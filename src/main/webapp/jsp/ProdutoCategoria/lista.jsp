<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<head>
<script type="text/javascript">

	</script>
</head>

<div class="box box-warning">
	<div class="box-header">
		<h3 class="box-title">Lista de Categorias Cadastradas</h3>
		<div class="box-tools">
			<div class="input-group">
				<input type="text" name="table_search"
					class="form-control input-sm pull-right" style="width: 150px;"
					placeholder="Pesquisar">
				<div class="input-group-btn">
					<button class="btn btn-sm btn-default">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body table-responsive no-padding">
		<table class="table table-hover">
			<tbody>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Descrição</th>
				</tr>
				<mtw:list value="listProdutoCategorias">
					<mtw:isEmpty>
					   Não há categorias cadastradas... 
					</mtw:isEmpty>
					<mtw:loop var="categoria">
						<tr>
							<td><mtw:out value="categoria.ID"/></td>
							<td><mtw:out value="categoria.nome"/></td>
							<td><mtw:out value="categoria.descricao"/></td>
						</tr>
					</mtw:loop>
				 
				</mtw:list>
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
</div>