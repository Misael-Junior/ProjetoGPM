package br.com.tecdainfor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.tecdainfor.dao.UsuarioDAO;
import br.com.tecdainfor.model.Usuario;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@Autowired
	UsuarioDAO usuariodao;
	
	//Mapeamento das telas
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("usuario/cadastrar-usuario");
	}
		
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView Alterar(@PathVariable int id){
		usuariodao.consultarUsuarioCodigo(id);
		return new ModelAndView("usuario/alterar-usuario");
	}
	
	/*@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView list(){
		return new ModelAndView("usuario/listar-usuario");
	}*/
	
	//Recebimento e tratamento dos dados via HTTP.
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public @ResponseBody Usuario salvar(@RequestBody Usuario usuario) {
		return this.usuariodao.cadastrarUsuario(usuario);				
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public @ResponseBody Usuario alterar(@RequestBody Usuario usuario){
		return this.usuariodao.alterarUsuario(usuario);
	}
	
	@RequestMapping (value = "/excluir/{id}", method = RequestMethod.DELETE)
	public @ResponseBody Usuario excluir(@PathVariable int id){
		return this.usuariodao.excluir(id);
	}
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public @ResponseBody List<Usuario> listar(){
		return this.usuariodao.listarUsuario();
	}
}
