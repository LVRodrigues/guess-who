import { Component } from '@angular/core';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  cards!: Card[];

  constructor(private cardsService: CardsService) {}

  ngOnInit() {
    this.list();
  }

  list(): void {
     this.cardsService.list().subscribe({
        next: (data) => {
          console.log(data);
        },
        error: (e) => {
          this.cards = [];
        },
        complete: () => {
          console.log("Lista recuperada.");
        }
    });
  }
}
