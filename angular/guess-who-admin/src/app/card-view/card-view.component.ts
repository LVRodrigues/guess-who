import { formatCurrency } from '@angular/common';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CardFormComponent } from '../common/card-form/card-form.component';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';

@Component({
  selector: 'app-card-view',
  templateUrl: './card-view.component.html',
  styleUrls: ['./card-view.component.scss']
})
export class CardViewComponent {

  constructor(
      private activatedRoute: ActivatedRoute,
      private cardsService: CardsService,
      private cardForm: CardFormComponent) {
    this.activatedRoute.paramMap.subscribe((params) => {
      let id: string = params.get('id')!;
      
    });
  }
}
