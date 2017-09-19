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
	public void cadastrarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		manager.merge(usuario);
	}

	public Usuario loginUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}

	public void esqueciSenhaUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}

	public void alterarSenhaUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}

	public void alterarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		manager.merge(usuario);
	}

	public Usuario consultarUsuarioCodigo(int codigo) {
		// TODO Auto-generated method stub
		return manager.find(Usuario.class, codigo);
	}

	public Usuario consultarUsuarioNome(String nome) {
		// TODO Auto-generated method stub
		return null;
	}

	public void Excluir(int codigo) {
		// TODO Auto-generated method stub
		Usuario usuario = this.consultarUsuarioCodigo(codigo);
		manager.remove(usuario);
	}

	public List<Usuario> TodosUsuarios() {
		// TODO Auto-generated method stub
		return manager.createQuery("SELECT u FROM Usuario u ORDER BY u.nome", Usuario.class).getResultList();
	}

}
