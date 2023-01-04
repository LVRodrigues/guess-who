import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';

@Component({
  selector: 'app-card-view',
  templateUrl: './card-view.component.html',
  styleUrls: ['./card-view.component.scss']
})
export class CardViewComponent {

  selected: Card;

  constructor(
      private activatedRoute: ActivatedRoute,
      private cardsService: CardsService) {
    this.selected = new Card();
    this.activatedRoute.paramMap.subscribe((params) => {
      let id: string = params.get('id')!;
      cardsService.getByID(id).subscribe((v) => this.selected = v);
    });
  }
}
