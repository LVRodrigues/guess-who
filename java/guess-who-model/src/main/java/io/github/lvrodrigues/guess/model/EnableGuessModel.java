package io.github.lvrodrigues.guess.model;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * Habilita o uso do módulo de persistência.
 *
 * @since 30/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
@Import(Configurator.class)
@Configuration
public @interface EnableGuessModel {
    
}
