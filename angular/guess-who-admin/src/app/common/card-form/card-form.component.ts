import { Component } from '@angular/core';
import { CardsService } from '../cards.service';
import { Card } from '../model/card';

@Component({
  selector: 'app-card-form',
  templateUrl: './card-form.component.html',
  styleUrls: ['./card-form.component.scss']
})
export class CardFormComponent {

  loading: boolean;
  card!: Card;

  constructor(private cardsService: CardsService) {
    this.card = new Card();
    this.loading = false;
  }

  loadCard(id: string): void {
    this.loading = true;
    this.cardsService.getByID(id).subscribe({
      next: (next) => {
        this.card = next;
      },
      error: (error) => {
          this.card = new Card();
          this.loading = false;
      },
      complete: () => {
        this.loading = false;
      }
    })
  }
}
