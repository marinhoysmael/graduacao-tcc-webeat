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
		<h3 class="box-title">Lista de Produtos Cadastrados</h3>
		<div class="box-tools">
			<div class="input-group">
				<input type="text" name="table_search"
					class="form-control input-sm pull-right" style="width: 150px;"
					placeholder="Pesquisar">
				<div class="input-group-btn">
					<button class="btn btn-sm btn-default" style="padding-bottom: 4px;">
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
					<th>Nome</th>
					<th>Valor R$</th>
					<th>Situação</th>
					<th>Categorias</th>
<!-- 					<th>Opções</th> -->
				</tr>
				<mtw:list value="listProdutos">
					<mtw:isEmpty>
					   Não há produtos cadastradas... 
					</mtw:isEmpty>
					<mtw:loop var="produto">
						<tr>
							<td><mtw:out value="produto.nome"/></td>
							<td><mtw:out value="produto.valor"/></td>
							<td><mtw:out value="produto.situacao"/></td>
							<td>
								<mtw:list value="produto.categorias">
									<mtw:isEmpty>
					   					Sem Categorias
									</mtw:isEmpty>
									<mtw:loop var="categoria">
										<mtw:out value="categoria.nome"/><br>
									</mtw:loop>
								</mtw:list>
							</td>
						</tr>
					</mtw:loop>
				 
				</mtw:list>
			</tbody>
		</table>
	</div>
	<!-- /.box-body -->
</div>