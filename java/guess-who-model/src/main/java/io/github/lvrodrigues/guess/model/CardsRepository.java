package io.github.lvrodrigues.guess.model;

import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Acesso aos métodos de persistência para {@link Card}. 
 *
 * @since 21/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public interface CardsRepository extends JpaRepository<Card, UUID> {
    
    /**
     * Localiza um personagem bíblico por seu nome exato.
     *
     * @param name Nome do personagem.
     * @param pageable Página. 
     * @return {@link Card}.
     */
    Page<Card> findByNameContainsIgnoreCase(String name, Pageable pageable);

    /**
     * Localiza uma página.
     *
     * @param pageable Página.
     * @return Página.
     */
    Page<Card> findAll(Pageable pageable);
}
