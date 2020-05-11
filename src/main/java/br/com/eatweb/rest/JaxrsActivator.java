package br.com.eatweb.rest;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import br.com.eatweb.rest.resource.EnderecoResource;
import br.com.eatweb.rest.resource.EstabelecimentoComentarioResource;
import br.com.eatweb.rest.resource.EstabelecimentoResourse;
import br.com.eatweb.rest.resource.ProdutoCategoriaResource;
import br.com.eatweb.rest.resource.ProdutoResourse;
import br.com.eatweb.rest.resource.ProprietarioResource;
import br.com.eatweb.rest.resource.UsuarioResource;



@ApplicationPath("/rest")

public class JaxrsActivator extends Application {
	
     public Set<Class<?>> getClasses() {
         Set<Class<?>> s = new HashSet<Class<?>>();
         
         s.add(UsuarioResource.class);
         s.add(ProprietarioResource.class);
         s.add(EstabelecimentoResourse.class);
         s.add(EstabelecimentoComentarioResource.class);
         s.add(ProdutoCategoriaResource.class);
         s.add(ProdutoResourse.class);
         s.add(EnderecoResource.class);
         return s;
     }
}