<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<head>
	<style type="text/css">
		.cropit-image-preview {
			margin: auto;
			background-color: #f8f8f8;
			background-size: cover;
			border: 1px solid #ccc;
			border-radius: 3px;
			margin-top: 7px;
			width: 350px;
			height: 350px;
			cursor: move;
		}
		
		.cropit-image-background {
			opacity: .2;
			cursor: auto;
		}
		
		.image-size-label {
			margin-top: 10px;
		}
		
				
		.btn-file {
		  position: relative;
		  overflow: hidden;
		}
		.btn-file input[type=file] {
		  position: absolute;
		  top: 0;
		  right: 0;
		  text-align: right;
		  filter: alpha(opacity=0);
		  opacity: 0;
		  background: red;
		  cursor: inherit;
		  display: block;
		}
		input[readonly] {
		  background-color: white !important;
		  cursor: text !important;
		}
		
		.btn {
			padding: 6px 12px;
		 }
		 
		 .erro-mensage{
			color: #f55858;
			background-color: #FFF;
		}
	</style>
	<script src="dist/jquery.cropit.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//CAMPO DE CARREGAMENTO DE IMAGEM
			$('.image-editor').cropit();
			$(document).on('change', '.btn-file :file', function() {
	  		  var input = $(this),  		      numFiles = input.get(0).files ? input.get(0).files.length : 1,
	  		      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	  		  input.trigger('fileselect', [numFiles, label]);
	  		});
		    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
		        
		        var input = $(this).parents('.input-group').find(':text'),
		            log = numFiles > 1 ? numFiles + ' files selected' : label;
		        
		        if( input.length ) {
		            input.val(log);
		        } else {
		            if( log ) alert(log);
		        }
		        
		    });
		    
			$("#formProduto").submit(function form(){
				
				$('#divProgressFormulario').show();
		    	
				nome  =  $(this).find("input[name$='nome']").val();
		    	valor  =  $(this).find("input[name$='valor']").val();
		    	descricao  =  $(this).find("textarea[name$='descricao']").val();
		    	situacao  =  $(this).find("select[name$='situacao']").val();
		    	categorias = $("select[name$='categorias']").val();
		    	
		    	estabelecimentoID = $("#estabelecimentoID").val();

		    	//CAPTURANDO A IMAGEM E ENVIANDO PREPRARANDO PARA O ENVIO
		    	var imageData = $('.image-editor').cropit('export');
				$('.hidden-image-data').val(imageData);
				
		    	$.post("ProdutoAction.salvar.mtw",
		    			{
		    				'nome': nome,
			    			'valor': valor,
			    			'descricao': descricao,
			    			'situacao': situacao,
			    			'categorias[]': categorias,
			    			'imagem' : imageData,
		    				'estabelecimentoID' : estabelecimentoID
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

<mtw:bean value="produto">
	<mtw:form  id="formProduto" action="javascript:void(0);"  method="post">
		<!-- general form elements -->
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Cadastrar Produto</h3>
				<div id="divProgressFormulario" style="display: none;">
					<jsp:include page="/jsp/progresso.jsp"></jsp:include>
				</div>
			</div>
			<!-- /.box-header -->
			<!-- CONTEUDO DO FORMULARIO -->
			<div class="box-body">
				<!-- NOME -->
				<div class="form-group">
					<label for="nome">Nome</label>
					<mtw:outError field="nome">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<mtw:input type="text" name="nome" klass="form-control"	extra="placeholder=Nome para o produto" size="100" maxlength="100" />
					</div>
				</div>
				<!-- VALOR -->
				<div class="form-group">
					<label for="valor">Valor</label>
					<mtw:outError field="valor">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-dollar"></i></span>
						<mtw:input type="text" name="valor" klass="form-control" extra="placeholder=Valor em R$" size="100" maxlength="100" />
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
				<!-- CATEGORIAS -->
				<div class="form-group">
					<label for="categorias">Categorias</label> 
					<mtw:outError field="categorias[]">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<select name="categorias" class="form-control" multiple="true">
						<mtw:list value="listCategorias">
							<mtw:loop var="categoria">
								<option value="${categoria.ID}">${categoria.nome}</option>
							</mtw:loop>
						</mtw:list>
					</select>
				</div>
				<!-- SITUACAO -->
				<div class="form-group">
					<label for="valor">Situação</label>
					<mtw:outError field="situacao">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<mtw:select name="situacao" list="listSituacao" klass="form-control"/>
				</div>
				<!-- IMAGEM -->
				<div class="form-group">
					<label for="valor">Imagem</label>
					<mtw:outError field="imagem">
						<font class="erro-mensage"><mtw:out /> <br></font>
					</mtw:outError>
					<div class="image-editor">
						<div class="input-group">
							<span class="input-group-btn"> 
								<span class="btn btn-primary btn-file"> 
									Selecionar 
									<input type="file" class="cropit-image-input">
								</span>
							</span> 
							<input type="text"  class="form-control" readonly>
						</div>
						<div class="cropit-image-preview"></div>
				        <div class="image-size-label">
				          Redimensionar imagem
				        </div>
				        <input type="range" class="cropit-image-zoom-input">
				        <input type="hidden" name="image-data" class="hidden-image-data" />
					</div>
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
