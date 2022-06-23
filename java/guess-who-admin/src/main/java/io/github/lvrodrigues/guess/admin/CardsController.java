package io.github.lvrodrigues.guess.admin;

import java.util.List;

import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.github.lvrodrigues.guess.model.Card;
import io.github.lvrodrigues.guess.model.CardsRepository;

/**
 * Gereciamento dos cartões de personagens.
 *
 * @since 23/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@RestController
public class CardsController {

    /**
     * Persistência de cartões de personagens.
     */
    private final CardsRepository cards;

    /**
     * Construtor padrão.
     *
     * @param cards Módulo de persistência dos cartões de personagens.
     */
    public CardsController(CardsRepository cards) {
        this.cards = cards;
    }

    /**
     * Recupera a lista de personagens.
     *
     * @param name Nome do cartão para localizar.
     * 
     * @return Lista de {@link Card}.
     */
    @GetMapping(value = "/cards")
    public List<EntityModel<Card>> getCards(
            @RequestParam(required = false) String name) {
        List<EntityModel<Card>> result = cards.findAll().stream()
            .map(item -> EntityModel.of(item))
            .toList();
        return result;
    }
}
