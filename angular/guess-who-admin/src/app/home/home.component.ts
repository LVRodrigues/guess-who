import { Component } from '@angular/core';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';
import { Page } from '../common/model/page';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  cards!: Card[];
  page!: Page;

  constructor(private cardsService: CardsService) {}

  ngOnInit() {
    this.list();
  }

  list(): void {
     this.cardsService.list().subscribe({
        next: (data) => {
          this.cards = data._embedded.cards;
          this.page = data.page;
          console.log(this.cards);
          console.log(this.page);          
        },
        complete: () => {
          console.info("Total de cartões recuperados: " + this.cards.length);
        }
    });
  }
}
