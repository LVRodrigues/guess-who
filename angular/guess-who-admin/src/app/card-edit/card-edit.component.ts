import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';
import { NotifierService } from '../common/notifier/notifier.service';

@Component({
  selector: 'app-card-edit',
  templateUrl: './card-edit.component.html',
  styleUrls: ['./card-edit.component.scss']
})
export class CardEditComponent {
  
  selected: Card;

  constructor(
    private cardsService: CardsService,
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private notifier: NotifierService
  ) {
    this.selected = new Card();
    this.activatedRoute.paramMap.subscribe((params) => {
      let id: string = params.get('id')!;
      cardsService.getByID(id).subscribe((v) => this.selected = v);
    });
  }

  confirm(card: Card): void {
    this.cardsService.edit(card).subscribe({
      next: (result) => {
        this.notifier.info('Cartão do personagem "' + result.name + '" alterado com sucesso!');
      },
      error: (error) => {
        this.notifier.error('Cartão do personagem não pode ser alterado.\n' + error.message);
      },
      complete: () => {
        this.router.navigate(['home']);
      }
    });      
  }
}
