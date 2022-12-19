import { Component, Input } from '@angular/core';
import { AuthService } from '../auth.service';
import { ThemeService } from '../theme.service';
import { TokenService } from '../token.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent {

  title = 'Guess Who?'

  constructor(
    private themeService : ThemeService,
    private authService : AuthService,
    private tokenService: TokenService) {
  }

  toggle(): void {
    this.themeService.toggle();
  }

  icon(): string {
    return this.themeService.icon();
  }

  iconTooltip(): string {
    return this.themeService.iconTooltip();
  }

  name(): string | null {
    return this.tokenService.getName();
  }

  isLogged() : boolean {
    return this.authService.isLogged();
  }

  logout(): void {
    this.authService.logout();
  }
}
