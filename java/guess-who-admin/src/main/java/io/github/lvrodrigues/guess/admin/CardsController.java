package io.github.lvrodrigues.guess.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.github.lvrodrigues.guess.model.Card;
import io.github.lvrodrigues.guess.model.CardsRepository;
import io.github.lvrodrigues.guess.utils.FieldUtil;

/**
 * Gereciamento dos cartões de personagens.
 *
 * @since 23/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@RestController
@RequestMapping("/${default.api}/cards")
public class CardsController {

    /**
     * Persistência de cartões de personagens.
     */
    @Autowired
    private CardsRepository cards;

    /**
     * Construtor padrão.
     */
    public CardsController() {
    }

    /**
     * Recupera a lista de personagens.
     *
     * @param page Número da página para recuperar.
     * @param size Tamanho da página em quantidade de registros.
     * @param sort Lista de campos, separados por vírgula, para ordenação.
     * @param fields Lista de campos, separados por vírgula, para recuperar.
     * @param name Nome do cartão para usar como filtro.
     * 
     * @return Lista de {@link Card}.
     */
    @GetMapping(value = "")
    public Page<Card> getCards(
            @RequestParam(required = false, defaultValue = "${default.request.page}") Integer page,
            @RequestParam(required = false, defaultValue = "${default.request.size}") Integer size,
            @RequestParam(required = false, defaultValue = "") String fields,
            @RequestParam(required = false, defaultValue = "name") String sort,
            @RequestParam(required = false) String name) {  
        // Verificando a integridade dos parâmetros:
        FieldUtil.validateParams(Card.class, sort, fields);
        // Verificando a ordenação:
        Sort sorts = FieldUtil.sort(sort);
        // Preparando a página de resposta:
        Pageable paging     = PageRequest.of(page, size, sorts);
        Page<Card> result   = null;
        if (name != null) {
            result = cards.findByName(name, paging);
        } else {
            result = cards.findAll(paging);
        }
        // Filtrando a lista de campos para resposta. 
        FieldUtil.filter(result, fields);
        return result;
    }
}
