package io.github.lvrodrigues.guess.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.IanaLinkRelations;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.github.lvrodrigues.fonema.Fonema;
import io.github.lvrodrigues.guess.admin.assemblers.CardAssembler;
import io.github.lvrodrigues.guess.exceptions.NotFoundException;
import io.github.lvrodrigues.guess.model.Card;
import io.github.lvrodrigues.guess.model.CardsRepository;
import io.github.lvrodrigues.guess.model.Question;
import io.github.lvrodrigues.guess.model.QuestionsRepository;
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
@RequestMapping("/v1/cards")
public class CardsController {

    /**
     * Persistência de cartões de personagens.
     */
    @Autowired
    private CardsRepository cards;

    @Autowired
    private QuestionsRepository questions;

    /**
     * Construtor dos links de paginação.
     */
    @Autowired
    private PagedResourcesAssembler<Card> pagesAssembler;

    /**
     * Construtor dos links de cartões de personagens.
     */
    @Autowired
    private CardAssembler cardAssembler;

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
    public PagedModel<Card> getCards(
            @RequestParam(required = false, defaultValue = "${default.request.page}") Integer page,
            @RequestParam(required = false, defaultValue = "${default.request.size}") Integer size,
            @RequestParam(required = false, defaultValue = "") String fields,
            @RequestParam(required = false, defaultValue = "name") String sort,
            @RequestParam(required = false) String name) {  
        // Verificando a integridade dos parâmetros:
        FieldUtil.validateParams(Card.class, sort, fields, page);
        // Verificando a ordenação:
        Sort sorts = FieldUtil.sort(sort);
        // Preparando a página de resposta:
        Pageable paging     = PageRequest.of(page, size, sorts);
        Page<Card> result   = null;
        if (name != null) {
            result = cards.findByNameContainsIgnoreCase(name, paging);
        } else {
            result = cards.findAll(paging);
        }
        if (result.isEmpty()) {
            throw new NotFoundException();
        }
        // Na listagem, não devolver o campo de imagem:
        result.getContent().stream().forEach(c -> c.setImage(null));
        // Filtrando a lista de campos para resposta. 
        FieldUtil.filter(result, fields);
        // Adicionando hiper mídia na resposta.
        return pagesAssembler.toModel(result, cardAssembler);
    }

    /**
     * Localiza um cartão específico por sua chave única.
     *
     * @param uuid Identificador único de um cartão bíblico.
     * @return Cartão de Personagem Bíblico.
     */
    @RequestMapping(value = "/{uuid}")
    public HttpEntity<Card> getCard(@PathVariable(required = true) UUID uuid) {
        Optional<Card> optional = cards.findById(uuid);
        if (optional.isPresent()) {
            Card card = optional.get();
            CardAssembler assembler = new CardAssembler();
            card = assembler.toModel(card);
            return new ResponseEntity<Card>(card, HttpStatus.OK);
        } else {
            NotFoundException ex = new NotFoundException();
            ex.addDetail(String.format("Cartão com identificador \"%s\" não foi localizado.", uuid));
            throw ex;
        }
    }

    /**
     * Adiciona um novo cartão de personagem bíblico.
     *
     * <p>Os campos de ID e o campo phoneme são calculados.
     *
     * @param body Informações do novo cartão.
     * @return Cartão Bíblico criado.
     */
    @PostMapping(value = "")
    public HttpEntity<Card> addCard(@RequestBody Card body) {
        // Salvar o cartão de personagem.
        Card card = new Card();
        card.setId(UUID.randomUUID());
        card.setName(body.getName());
        card.setPhoneme(Fonema.process(body.getName()));
        card.setImage(body.getImage());
        card = cards.save(card);
        // Perguntas sobre o cartão.
        List<Question> items = new ArrayList<>();
        for (Question item : body.getQuestions()) {
            Question question = new Question();
            question.setCard(card);
            question.setId(UUID.randomUUID());
            question.setText(item.getText());
            question.setEvidence(item.getEvidence());
            items.add(question);
            questions.save(question);
        }
        // Atualizando o objeto.
        card.setQuestions(items);
        // card = cards.save(card);
        card = cardAssembler.toModel(card);
        return ResponseEntity
            .created(card.getRequiredLink(IanaLinkRelations.SELF).toUri())
            .body(card);
    }
}
