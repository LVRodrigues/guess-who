package br.com.spiderbot.guess.gameserver;

import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
* Configurações de segurança do aplicativo.
*
* @author <a href="mailto:lvrodrigues@spiderbot.com.br">Luciano Vieira Rodrigues</a>
* @since 05/11/2021
* @author $$Author$$
* @version $$Revision$$ - $$Date$$
*/
@EnableWebSecurity
public class Security extends WebSecurityConfigurerAdapter {
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests(authorizeRequests -> authorizeRequests
            .antMatchers(HttpMethod.GET, "/*").permitAll()
        );
    }
}
