package io.github.lvrodrigues.guess.model;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Configurar o módulo de persistência.
 *
 * @since 30/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@Configuration
@EnableJpaRepositories
@EntityScan
public class Configurator {
    
}
