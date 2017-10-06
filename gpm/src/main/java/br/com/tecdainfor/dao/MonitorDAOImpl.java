package br.com.tecdainfor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;

import br.com.tecdainfor.model.Monitor;

@Repository
public class MonitorDAOImpl implements MonitorDAO {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
	
	@javax.transaction.Transactional
	public Monitor cadastrarMonitor(Monitor monitor) {
		return manager.merge(monitor);
	}
		
	
	
	@javax.transaction.Transactional
	public Monitor alterarMonitor(Monitor monitor) {
		// TODO Auto-generated method stub
		return manager.merge(monitor);
	}
	
	@javax.transaction.Transactional
	public Monitor consultarMonitorCodigo(int id) {
		// TODO Auto-generated method stub
		return manager.find(Monitor.class, id);
	}
	
	@javax.transaction.Transactional
	public Monitor consultarMonitorTomb(String nome) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@javax.transaction.Transactional
	public Monitor excluir(int id) {
		// TODO Auto-generated method stub
		Monitor monitor = this.consultarMonitorCodigo(id);
		manager.remove(monitor);
		return monitor;
		//porque esse metodo retorna um monitor?
	}
	
	@javax.transaction.Transactional
	public List<Monitor> listarMonitores(){
		return manager.createQuery("SELECT u FROM Usuario u ORDER BY u.nome", Monitor.class).getResultList();
	}



	@Override
	public Monitor cadastrarUsuario(Monitor usuario) {
		// TODO Auto-generated method stub
		return null;
	}

}

	

