import { HttpErrorResponse } from '@angular/common/http';
import { Component, Input } from '@angular/core';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';
import { Page } from '../common/model/page';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  @Input() name: string = '';

  cards!: Card[];
  page!: Page;

  constructor(private cardsService: CardsService) {
    this.list();
  }

  onFilter(event: any) {
    console.debug('Pesquisar por ', this.name);
    this.list();
  }

  clearFilter() {
    console.debug('Limpando o filtro de pesquisa.');
    this.name = '';
    this.list();
  }

  list(): void {
     this.cardsService.list(this.name).subscribe({
        next: (data) => {
          this.cards = data._embedded.cards;
          this.page = data.page;
          console.log(this.cards);
          console.log(this.page);          
        },
        error: (error) => {
          if (!(error instanceof HttpErrorResponse)) {
            error = error.rejection; 
          }
          if (error.status === 404) {
            console.debug('Nenhum registro encontrado...');
            this.cards = [];
            this.page  = new Page();
          } else {
            throw error;
          }
        },
        complete: () => {
          console.info("Total de cartões recuperados: " + this.cards.length);
        }
    });
  }
}
