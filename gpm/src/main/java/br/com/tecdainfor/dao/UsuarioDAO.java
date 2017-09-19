package br.com.tecdainfor.dao;

import java.util.List;

import br.com.tecdainfor.model.Usuario;

public interface UsuarioDAO {
	
	public void cadastrarUsuario(Usuario usuario);
	
	public Usuario loginUsuario(Usuario usuario);
	
	public void esqueciSenhaUsuario(Usuario usuario);
	
	public void alterarSenhaUsuario(Usuario usuario);
	
	public void alterarUsuario(Usuario usuario);
	
	public Usuario consultarUsuarioCodigo(int codigo);
	
	public Usuario consultarUsuarioNome(String nome);
	
	public void Excluir(int codigo);
	
	public List<Usuario> TodosUsuarios();

}
