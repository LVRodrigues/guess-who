package br.com.spiderbot.guess.gameserver.model;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

/**
* Acesso aos métodos de persistência para {@link Question}.
*
* @author <a href="mailto:lvrodrigues@spiderbot.com.br">Luciano Vieira Rodrigues</a>
* @since 16/11/2021
* @author $$Author$$
* @version $$Revision$$ - $$Date$$
*/
public interface QuestionRepository extends JpaRepository<Question, UUID> {
    
}
