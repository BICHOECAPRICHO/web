package br.com.bec.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.bec.dao.ClienteDao;
import br.com.bec.dao.TarefaDao;
import br.com.bec.modelo.Cliente;
import br.com.bec.modelo.Tarefa;

@Transactional
@Controller
public class TarefasController {

	@Autowired
	TarefaDao dao;

	@Autowired
	ClienteDao daoCli;

	@RequestMapping("novaTarefa")
	public String form() {
		return "tarefa/formulario";
	}

	@RequestMapping("buscaCPF")
	public String buscaCPF(String CPF, ModelMap model) {
		Cliente cliente;
		cliente = daoCli.buscaPorCPF(CPF);
		
		model.addAttribute("cpf", CPF);
		if(cliente != null)
		{			
			model.addAttribute("nomeCliente", cliente.getNome());
			model.addAttribute("email", cliente.getEmail());
			model.addAttribute("cep", cliente.getCep());
			model.addAttribute("endereco", cliente.getEndereco());
			model.addAttribute("cidade", cliente.getCidade());
			model.addAttribute("uf", cliente.getUf());
			
		}
		return "tarefa/formCPF";
	}

	@RequestMapping("adicionaTarefa")
	public String adciona(@Valid Tarefa tarefa, @Valid Cliente cliente, BindingResult result) {

		if (result.hasErrors()) {
			return "tarefa/formulario";
		}
		dao.adiciona(tarefa);

		return "redirect:listaTarefas";
	}

	@RequestMapping("listaTarefas")
	public String lista(Model model) {
		model.addAttribute("tarefas", dao.lista());
		return "tarefa/lista";
	}

	@RequestMapping("removeTarefa")
	public String remove(Tarefa tarefa) {
		dao.remove(tarefa);
		return "redirect:listaTarefas";
	}

	@RequestMapping("mostraTarefa")
	public String mostra(Long id, Model model) {
		model.addAttribute("tarefa", dao.buscaPorId(id));
		return "tarefa/mostra";
	}

	@RequestMapping("alteraTarefa")
	public String altera(Tarefa tarefa) {
		dao.altera(tarefa);
		return "redirect:listaTarefas";
	}

	@RequestMapping("finalizaTarefa")
	public String finaliza(Long id, Model model) {
		dao.finaliza(id);
		model.addAttribute("tarefa", dao.buscaPorId(id));
		return "tarefa/finalizada";
	}

}
