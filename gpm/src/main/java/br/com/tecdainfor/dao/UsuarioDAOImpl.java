package br.com.tecdainfor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;

import br.com.tecdainfor.model.Usuario;

@Repository
public class UsuarioDAOImpl implements UsuarioDAO{
	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
	
	@javax.transaction.Transactional
	public Usuario cadastrarUsuario(Usuario usuario) {
		return manager.merge(usuario);
	}
	
	@javax.transaction.Transactional
	public Usuario loginUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@javax.transaction.Transactional
	public void esqueciSenhaUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}
	
	@javax.transaction.Transactional
	public void alterarSenhaUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}
	
	@javax.transaction.Transactional
	public Usuario alterarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return manager.merge(usuario);
	}
	
	@javax.transaction.Transactional
	public Usuario consultarUsuarioCodigo(int id) {
		// TODO Auto-generated method stub
		return manager.find(Usuario.class, id);
	}
	
	@javax.transaction.Transactional
	public Usuario consultarUsuarioNome(String nome) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@javax.transaction.Transactional
	public Usuario excluir(int id) {
		// TODO Auto-generated method stub
		Usuario usuario = this.consultarUsuarioCodigo(id);
		manager.remove(usuario);
		return usuario;
	}
	
	@javax.transaction.Transactional
	public List<Usuario> listarUsuario() {
		// TODO Auto-generated method stub
		return manager.createQuery("SELECT u FROM usuario u ORDER BY u.nome", Usuario.class).getResultList();
	}

}
