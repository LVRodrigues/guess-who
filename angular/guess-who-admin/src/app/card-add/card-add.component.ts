import { Component } from '@angular/core';
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
    private cardsService: CardsService
  ) {
    this.selected = new Card();
  }
}
