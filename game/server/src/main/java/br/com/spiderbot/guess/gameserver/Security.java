package br.com.spiderbot.guess.gameserver;

import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
* Configurações de segurança do aplicativo.
*
* @since 16/11/2021
* @author $Author$
* @author $Committer$
* @branch $Branch$
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
