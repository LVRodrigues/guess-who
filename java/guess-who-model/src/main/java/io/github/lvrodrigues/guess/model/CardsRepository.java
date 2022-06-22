package io.github.lvrodrigues.guess.model;

import java.util.List;
import java.util.UUID;

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
     * Localiza um personagem bíblio por seu nome exato.
     *
     * @param name Nome do personagem.
     * @return {@link Card}.
     */
    List<Card> findByName(String name);
}
