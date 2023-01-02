import { Component, Input, Output } from '@angular/core';
import { CardsService } from '../cards.service';
import { Card } from '../model/card';

@Component({
  selector: 'app-card-form',
  templateUrl: './card-form.component.html',
  styleUrls: ['./card-form.component.scss']
})
export class CardFormComponent {

  @Input() card!: Card;

  constructor() {
    this.card = new Card();
  }
}
