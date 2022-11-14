package io.github.lvrodrigues.guess.model;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Acesso aos métodos de persistência para {@link Question}. 
 *
 * @since 21/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public interface QuestionsRepository extends JpaRepository<Question, UUID> {
    
}
