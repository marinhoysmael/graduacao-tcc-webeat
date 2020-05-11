<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<head>
	<script type="text/javascript">
	$(document).ready(function() {
		
		$('#formProdutoCategoria').submit(function form(){
			$('#divProgressFormularioProdutoCategoria').show();
	    	nome  =  $(this).find("input[name$='nome']").val();
	    	descricao  =  $(this).find("textarea[name$='descricao']").val();
	 		estabelecimentoID = $("#estabelecimentoID").val();

	 		$.post("ProdutoCategoriaAction.salvar.mtw",
	    			{
	    				'nome': nome,
		    			'descricao': descricao,
		    			'estabelecimentoID': estabelecimentoID
	    			},
	    			function(data, status){
	   		 			$("#divConteudoDocumento").html(data);
	    			}
	    	);	
    		return false;
		});
    });
	</script>
</head>

<mtw:bean value="produtoCategoria">
	<mtw:form  id="formProdutoCategoria" action="javascript:void(0);"  method="post">
		<!-- general form elements -->
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Cadastrar Categoria</h3>
				<div id="divProgressFormularioProdutoCategoria" style="display: none;">
					<jsp:include page="/jsp/progresso.jsp"></jsp:include>
				</div>
			</div>	<!-- /.box-header -->
			<!-- CONTEUDO DO FORMULARIO -->
			<div class="box-body">
				<mtw:input type="hidden" name="ID"/>
				<!-- NOME -->
				<div class="form-group">
					<label for="nome">Nome</label>
					<mtw:outError field="nome">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<mtw:input type="text" name="nome" klass="form-control"	extra="placeholder=Nome da categoria" size="100" maxlength="100" />
					</div>
				</div>
				<!-- DESCRICAO -->
				<div class="form-group">
					<label for="descricao">Descrição</label>
					<mtw:outError field="descricao">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<mtw:textarea name="descricao" klass="form-control" rows="3"></mtw:textarea>
				</div>
			</div>
			<div class="box-footer" style="text-align: right;">
				<button type="reset" class="btn btn-primary">Limpar</button>
				<button type="submit" class="btn btn-primary">Cadastrar</button>
			</div>
		</div>
	</mtw:form>
</mtw:bean>
<!-- /.box -->
