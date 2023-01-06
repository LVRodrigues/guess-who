import { Component, Output } from '@angular/core';
import { environment } from 'src/environments/environments';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  constructor() {
    console.info('Enviroments...');
    console.info('Production...: ', environment.production);
    console.info('API Login URL: ', environment.apiLoginURL);
    console.info('API Cards URL: ', environment.apiCardsURL);
  }
}
