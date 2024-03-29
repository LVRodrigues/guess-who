package io.github.lvrodrigues.guess.security;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.core.convert.converter.Converter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.jwt.Jwt;

/**
 * Converte as Roles do Java Web Token em permissões para o usuário.
 *
 * @since 20/11/2022
 * @author $AuthorName$
 * @author $CommitterName$
 * @branch $Branch$
 */
public class RealmRoleConverter implements Converter<Jwt, Collection<GrantedAuthority>> {

    /* (non-Javadoc)
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    @Override
    public Collection<GrantedAuthority> convert(Jwt jwt) {
        final Map<String, List<String>> realmAccess = (Map<String, List<String>>) jwt.getClaims().get("realm_access");
        return realmAccess.get("roles").stream()
                .map(roleName -> "ROLE_" + roleName)
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());
    }
}
