package br.com.tecdainfor.dao;

import java.util.List;

import br.com.tecdainfor.model.Usuario;

public interface UsuarioDAO {
	
	public Usuario cadastrarUsuario(Usuario usuario);
	
	public Usuario loginUsuario(Usuario usuario);
	
	public void esqueciSenhaUsuario(Usuario usuario);
	
	public void alterarSenhaUsuario(Usuario usuario);
	
	public Usuario alterarUsuario(Usuario usuario);
	
	public Usuario consultarUsuarioCodigo(int id);
	
	public Usuario consultarUsuarioNome(String nome);
	
	public Usuario excluir(int id);
	
	public List<Usuario> listarUsuario();

}
