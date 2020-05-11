package br.com.eatweb.service;

import java.io.File;
import java.io.FileOutputStream;

import org.apache.commons.codec.binary.Base64;
import org.yecht.Data.Str;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.EstabelecimentoSituacao;
import br.com.eatweb.util.ConverteTo;
import br.com.eatweb.webRequest.Email;

import com.google.gson.Gson;
import com.google.gson.JsonElement;

public class EstabelecimentoService{
	
	
	
//	public String create(Estabelecimento estabelecimento, String imagem) {
//			
//		estabelecimento.setSituacao(EstabelecimentoSituacao.NAO_CONFIRMADO);
//		
//		Estabelecimento estabelecimentoDoBanco = dao.buscarPorEmail(estabelecimento.getEmail());
//		
//		if(estabelecimentoDoBanco == null){
//			//SALVANDO ESTABELECIMENTO NO BANCO DE DADOS;
//			estabelecimentoDoBanco = (Estabelecimento) dao.create(estabelecimento);
//			
//			/*
//			 *SALVANDO A IMAGEM NO SERVIDOR 
//			 */
//			String imageDataBytes = imagem.substring(imagem.indexOf(",") + 1);
//			
//			byte[] imgBytes = Base64.decodeBase64(imageDataBytes.getBytes());
//
//			String contextPath = System.getenv(Constantes.DIRETORIO_ARQUIVOS);
//			
//			FileOutputStream osf;
//
//			try {
//				osf = new FileOutputStream(new File(contextPath + "/estabelecimento-" + estabelecimentoDoBanco.getID() + ".png"));
//				osf.write(imgBytes);
//				osf.flush();
//
//			} catch (Exception e) {
//				e.printStackTrace();
//				return Constantes.CREATE_ERRO;
//			}
//			
//			StringBuilder mensagemBuilder = new StringBuilder();
//			mensagemBuilder
//					.append("<body>"
//							+ "   <link href='http://fonts.googleapis.com/css?family=Rokkitt|Open+Sans:300italic,400' rel='stylesheet' type='text/css'>"
//							+ "<div style=\"margin: 200px auto 0 auto;width: 560px\">"
//							+ "       <div class=\"media\">"
//							+ "           <a href=\"#\" class=\"pull-left animated rotateIn\">"
//							+ "               <img src=\"http://webeat-ysmael.rhcloud.com/images/1.png\" width=\"120px\" class=\"img-circle\" />"
//							+ "           </a>"
//							+ "           <div class=\"media-body animated slideInRight\">"
//							+ "               <h3>Personal Software</h3>"
//							+ "              <em>Desenvolvimento sob medida</a></em>"
//							+ "          </div>"
//							+ "      </div>"
//							+ "  <div class=\"tm\"></div>"
//							+ "       <div class=\"bubble animated bounceIn\">"
//							+ "	<h2>Olá "
//							+ estabelecimento.getProprietario().getNome()
//							+ "</h2>"
//							+ "<h3> Só precisa de mais um passo para terminarmos seu cadastro. Clique no botã Confirmar Cadastro para confirmar o cadastro do seu estabelecimento.</h3><br><br>"
//							+ "<a class=\"button\" href="
//							+ Constantes.ENDERECO_WEB_APLICATION
//							+ "/EstabelecimentoAction.confirmarEmail.mtw?cod="+ConverteTo.numberForString(estabelecimento.getID())
//							+ "><h1>Confirmar cadastro</h1></a>  "
//							+ "   </div>"
//							+ "   </div>"
//
//							+ "<br/><br/>"
//							+ "<div class=\"intro\">COPYRIGHT © 2015 PERSONAL SOFTWARE</a></div>"
//
//							+ "</body>");
//			Email.enviarEmail(estabelecimento.getProprietario().getEmail(), "Eat App - CADASTRO", mensagemBuilder.toString());
//			
//			return gson.toJson(estabelecimentoDoBanco);			
//		}
//		else{
//			/*
//			 * PRECISA ENVIAR UM EMAIL DE CONFIRMAÇÃO
//			 */
//			return Constantes.EMAIL_EXISTENTE;
//		}
//	}
	
	
//	public String confirmarEstabelecimento(String idJson){
//		long id =  ConverteTo.stringForNumber(idJson);
//		
//		Estabelecimento estabelecimento = (Estabelecimento) new EstabelecimentoDao().read(id);
//
//		if(estabelecimento == null){
//			return Constantes.UPDATE_ERRO;
//		}else{
//			if(estabelecimento.getSituacao().equals(EstabelecimentoSituacao.NAO_CONFIRMADO)){
//				estabelecimento.setSituacao(EstabelecimentoSituacao.OK);
//				new EstabelecimentoDao().update(estabelecimento);
//			}else{
//				return Constantes.UPDATE_SUCCESS;
//			}
//		}
//		return Constantes.UPDATE_SUCCESS;
//	}


}
