package br.edu.infnet.appprofissional.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.appprofissional.AppImpressao;
import br.edu.infnet.appprofissional.model.domain.*;

@Controller
public class MusculacaoController {
	private static Map<Integer, Musculacao> mapaMusculacao = new HashMap<Integer, Musculacao>();
	private static Integer id = 1;
	
	public static void incluir(Musculacao musculacao) {
		musculacao.setId(id++);
		mapaMusculacao.put(musculacao.getId(), musculacao);
		AppImpressao.relatorio("Inclusão do Serviço " + musculacao.getDescricao() + "!", musculacao);
	}
	
	public static void excluir(Integer id) {
		mapaMusculacao.remove(id);
	}
	
	public static Collection<Musculacao> obterLista() {
		return mapaMusculacao.values();
	}
	
	@GetMapping(value = "/musculacao/lista")
	public String telaLista(Model model) {
		model.addAttribute("listagem", obterLista());
		return "musculacao/lista";
	}
	
	@GetMapping(value = "/musculacao/{id}/excluir")
	public String exclusao(@PathVariable Integer id) {
		excluir(id);
		return "redirect:/musculacao/lista";
	}
}
