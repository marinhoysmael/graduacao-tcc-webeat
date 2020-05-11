<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="dist/jquery.cropit.js"></script>
	<style>
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
		
		input {
			display: block;
		}
		
		button[type="submit"] {
			margin-top: 10px;
		}
		
		#result {
			margin-top: 10px;
			width: 900px;
		}
		
		#result-data {
			display: block;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
			word-wrap: break-word;
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
	
	<script>
	(function( $ ) {
// 	      $(function() {
	    	  $("#cadastro-title").html("<p><i class= 'glyphicon glyphicon-picture'></i> - foto para o estabelecimento</p>");
	    	  $(document).on('change', '.btn-file :file', function() {
	    		  var input = $(this),  		      numFiles = input.get(0).files ? input.get(0).files.length : 1,
	    		      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	    		  input.trigger('fileselect', [numFiles, label]);
	    		});

	    		$(document).ready( function() {
	    		    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
	    		        
	    		        var input = $(this).parents('.input-group').find(':text'),
	    		            log = numFiles > 1 ? numFiles + ' files selected' : label;
	    		        
	    		        if( input.length ) {
	    		            input.val(log);
	    		        } else {
	    		            if( log ) alert(log);
	    		        }
	    		        
	    		    });
	    		});
	    	  
	          $('.image-editor').cropit();

	          $("#submitCadastrar").click(function form(){
					$('.progress').show();
					
					// Move cropped image data to hidden input
		            var imageData = $('.image-editor').cropit('export');
					$('.hidden-image-data').val(imageData);
					console.log(imageData);
		            
					// Print HTTP request params
		            var formValue = $(this).serialize();
		            $('#result-data').text(formValue);

		            // Prevent the form from actually submitting
		            
		            $.post("EstabelecimentoAction.salvar.mtw",
		    			{
			    			'imagem': imageData
			    			
		    			},
		    			function(data, status){
		    				$('#conteudo-form-cadastro').html(data);
		    			}
		    		);	
		            return false;
	          });
// 	        });
	})(jQuery);

    </script>
</head>	
	<div class="panel panel-default panel-form-cadastro">
			<div class="panel-heading">
				<form action="javascript:void(0);">
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
				</form>
			</div>
			<div class="panel-body formulario-titulo">
				<div class="progress" style="display: none;">
				  <div class="indeterminate"></div>
				</div>
				<a style="color: #FFF" id="submitCadastrar" href="javascript:void(0);">Concluir cadastro.<i class="glyphicon glyphicon-thumbs-up icone"></i></a>
			</div>
	</div>
