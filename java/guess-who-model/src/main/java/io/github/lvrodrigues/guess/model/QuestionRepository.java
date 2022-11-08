package io.github.lvrodrigues.guess.model;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Acesso aos métodos de persistência para {@link Question}. 
 *
 * @since 21/06/2022
 * @author $AuthorName$
 * @author $CommitterName$
 * @branch $Branch$
 */
public interface QuestionRepository extends JpaRepository<Question, UUID> {
    
}
