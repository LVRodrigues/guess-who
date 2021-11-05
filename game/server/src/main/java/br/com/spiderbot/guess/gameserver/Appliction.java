package br.com.spiderbot.guess.gameserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
* Inicialização do servidor REST.
* <p>
* Apresenta também a página de documentação no endereço inicial.
*
* @author <a href="mailto:lvrodrigues@spiderbot.com.br">Luciano Vieira Rodrigues</a>
* @since 05/11/2021
* @author $$Author$$
* @version $$Revision$$ - $$Date$$
*/
@SpringBootApplication
@Controller
public class Appliction {

	/**
	 * Apresenta a página inicial do aplicativo, com a documentação do projeto.
	 */
	@GetMapping(value = "/")
	public ModelAndView getRoot() {
		return new ModelAndView("index.html");
	}

	public static void main(String[] args) {
		SpringApplication.run(Appliction.class, args);
	}

}
