package br.com.bec.controller;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    binder.registerCustomEditor(Calendar.class, new PropertyEditorSupport() {
	        @Override
	        public void setAsText(String value) {
	            try {
	                Calendar cal = Calendar.getInstance();
	                cal.setTime(new SimpleDateFormat("dd-MM-yyyy").parse(value));
	                setValue(cal);
	            } catch (ParseException | java.text.ParseException e) {
	                setValue(null);
	            }
	        }

	        @Override
	        public String getAsText() {
	            if (getValue() == null) {
	                return "";
	            }
	            return new SimpleDateFormat("dd-MM-yyyy").format(((Calendar) getValue()).getTime());
	        }
	    });
	}
	
	@RequestMapping("novaTarefa")
	public String form() {
		return "tarefa/formulario";
	}

	@RequestMapping("adicionaTarefa")
	public String adciona(@Valid Tarefa tarefa,@Valid Cliente cliente, BindingResult result) {

		if (result.hasErrors()) {
			return "tarefa/formulario";
		}	
		
		daoCli.buscaPorCPF(cliente.getCpf());
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
