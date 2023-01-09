import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';
import { NotifierService } from '../common/notifier/notifier.service';

@Component({
  selector: 'app-card-add',
  templateUrl: './card-add.component.html',
  styleUrls: ['./card-add.component.scss']
})
export class CardAddComponent {

  selected: Card;

  constructor(
    private cardsService: CardsService,
    private router: Router,
    private notifier: NotifierService
  ) {
    this.selected = new Card();
  }

  confirm(card: Card): void {
    this.cardsService.add(card).subscribe((result) => {
      this.router.navigate(['home']);
      this.notifier.info('Cartão do personagem "' + result.name + '" criado com sucesso!');
    });
  }
}
