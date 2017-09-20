package br.com.tecdainfor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("cadastro-usuario");
	}
	
	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public @ResponseBody void salvar(@RequestBody Usuario usuario) {
		
		this.usuariodao.cadastrarUsuario(usuario); 
		
	}

}
