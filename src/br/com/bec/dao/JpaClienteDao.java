package br.com.bec.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.bec.modelo.Cliente;

@Repository
public class JpaClienteDao implements ClienteDao {

	@PersistenceContext
	EntityManager manager;

	@Override
	public Cliente buscaPorId(Long id) {
		return manager.find(Cliente.class, id);
	}

	@Override
	public List<Cliente> lista() {
		return manager.createQuery("select t from Cliente t").getResultList();
	}

	@Override
	public void adiciona(Cliente cliente) {
		manager.persist(cliente);
	}

	@Override
	public void altera(Cliente cliente) {
		manager.merge(cliente);
	}

	@Override
	public void remove(Cliente cliente) {
		Cliente clienteRemover = buscaPorId(cliente.getId());
		manager.remove(clienteRemover);
	}

	@Override
	public Cliente buscaPorCPF(String CPF) {
		
		Cliente cli = null;
		
		try {
			Query query = manager.createQuery("select c from Cliente c where c.cpf = :findCPF");
			query.setParameter("findCPF", CPF);
			
			cli = (Cliente) query.getSingleResult();
			
		} catch (NoResultException  e) {
			cli = null; 
		}catch (RuntimeException e) {  
		      e.printStackTrace();  
		   }  		
		return 	cli;			
		
	}
}
