import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';

@Component({
  selector: 'app-card-add',
  templateUrl: './card-add.component.html',
  styleUrls: ['./card-add.component.scss']
})
export class CardAddComponent {

  selected: Card;

  constructor(
    private cardsService: CardsService,
    private router: Router
  ) {
    this.selected = new Card();
  }

  confirm(card: Card): void {
    this.cardsService.add(card).subscribe((result) => {
      this.router.navigate(['home']);
    });
  }
}
