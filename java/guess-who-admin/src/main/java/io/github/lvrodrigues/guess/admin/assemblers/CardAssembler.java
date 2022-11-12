package io.github.lvrodrigues.guess.admin.assemblers;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

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
            linkTo(methodOn(CardsController.class).getCard(entity.getId())).withSelfRel());
    }
}
