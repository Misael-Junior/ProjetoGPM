package br.com.tecdainfor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.tecdainfor.dao.ImpressoraDAO;
import br.com.tecdainfor.model.Impressora;
import br.com.tecdainfor.model.Monitor;

@Controller
@RequestMapping("/impressora")
public class ImpressoraController {

	@Autowired
	ImpressoraDAO impressoradao;
	
	// Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar(){
		return new ModelAndView("impressora/listar-impressora");
		
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView cadastrar(){
		return new ModelAndView("impressora/cadastrar-impressora");
		
	}
	
	@RequestMapping(value = "/alterar{id}", method = RequestMethod.GET)
	public ModelAndView alterar(@PathVariable int id){
		Impressora impressora = impressoradao.consultarImpressora(id);
		 return new ModelAndView("impressora/alterar-impressora", "impressora", impressora);
	}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView Visualizar(@PathVariable int id){
		Impressora impressora  = impressoradao.consultarImpressora(id);
		return new ModelAndView("impressora/visualizar-impressora", "impressora", impressora);
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
}
