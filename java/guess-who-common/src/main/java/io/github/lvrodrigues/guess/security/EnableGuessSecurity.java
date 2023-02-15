package io.github.lvrodrigues.guess.security;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * Habilita o módulo de segurança para os servidores REST.
 *
 * @since 16/01/2023
 * @author $AuthorName$
 * @author $CommitterName$
 * @branch $Branch$
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
@Import(Configurator.class)
@Configuration
public @interface EnableGuessSecurity {
    
}
