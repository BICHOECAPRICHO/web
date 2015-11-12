package br.com.bec.dao;

import java.util.List;

import br.com.bec.modelo.Cliente;

public interface ClienteDao {
	
	Cliente buscaPorId(Long id);
	Cliente buscaPorCPF(String CPF);
	List<Cliente> lista();
	void adiciona(Cliente cliente);
	void altera(Cliente cliente);
	void remove(Cliente cliente);	
}
