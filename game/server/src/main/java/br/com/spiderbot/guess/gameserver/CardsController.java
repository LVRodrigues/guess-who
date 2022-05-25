package br.com.spiderbot.guess.gameserver;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.spiderbot.guess.gameserver.model.Card;
import br.com.spiderbot.guess.gameserver.model.CardsRepository;
import io.github.lvrodrigues.fonema.Fonema;



/**
 * Gereciamento dos cartões de personagens.
 *
 * @since 16/05/2022
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
     * @return Lista de {@link Card}.
     */
    @GetMapping(value="/cards")
    public List<EntityModel<Card>> getCards(
            @RequestParam(required = false) String name) {
        List<EntityModel<Card>> result = cards.findAll().stream()
            .map(item -> EntityModel.of(item))
            .toList();
        return result;
    }
}
