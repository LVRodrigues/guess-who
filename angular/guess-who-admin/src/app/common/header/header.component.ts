import { Component, Input } from '@angular/core';
import { ThemeService } from '../theme.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent {

  title = 'Guess Who?'

  constructor(private themeService : ThemeService) {}

  toggle() {
    this.themeService.toggle();
  }

  icon() {
    return this.themeService.icon();
  }
}
