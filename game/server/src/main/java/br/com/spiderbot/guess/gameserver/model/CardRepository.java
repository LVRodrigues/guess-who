package br.com.spiderbot.guess.gameserver.model;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

/**
* Acesso aos métodos de persistência para {@link Card}.
*
* @since 16/11/2021
* @author $Author$
* @author $Committer$
* @branch $Branch$
*/
public interface CardRepository extends JpaRepository<Card, UUID> {
    
}
