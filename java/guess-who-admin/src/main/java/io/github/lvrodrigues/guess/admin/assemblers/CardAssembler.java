package io.github.lvrodrigues.guess.admin.assemblers;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.stereotype.Component;

import io.github.lvrodrigues.guess.admin.CardsController;
import io.github.lvrodrigues.guess.model.Card;

/**
 * Preparar os links de referência para o objeto Card.
 *
 * @since 12/11/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@Component
public class CardAssembler extends RepresentationModelAssemblerSupport<Card, Card> {

    /**
     * Construtor padrão.
     */
    public CardAssembler() {
        super(CardsController.class, Card.class);
    }

    @Override
    public Card toModel(Card entity) {
        return entity.add(
            WebMvcLinkBuilder.linkTo(
                WebMvcLinkBuilder.methodOn(CardsController.class).getCard(entity.getId())).withSelfRel());
    }
}
