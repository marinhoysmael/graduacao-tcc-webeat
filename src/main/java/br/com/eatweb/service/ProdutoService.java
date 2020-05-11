package br.com.eatweb.service;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.commons.codec.binary.Base64;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Produto;
import br.com.eatweb.model.ProdutoCategoria;


public class ProdutoService{
	
//	public String create(Object object, String imagem) {
//		
//		Produto produtoDoBanco = (Produto) dao.create(object);
//		
//		String imageDataBytes = imagem.substring(imagem.indexOf(",") + 1);
//		
//		byte[] imgBytes = Base64.decodeBase64(imageDataBytes.getBytes());
//
//		String contextPath = System.getenv(Constantes.DIRETORIO_ARQUIVOS);
//		
//		FileOutputStream osf;
//
//		try {
//			osf = new FileOutputStream(new File(contextPath + "/produto-" + produtoDoBanco.getID() + ".png"));
//			osf.write(imgBytes);
//			osf.flush();
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			return Constantes.CREATE_ERRO;
//		}
//		
//		
//		return Constantes.CREATE_SUCCESS;
//	}


}
