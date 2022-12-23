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

  loading: boolean = false;

  cards!: Card[];
  page!: Page;
  linkNext!: string;
  linkPrevious!: string;

  constructor(private cardsService: CardsService) {
    this.page = new Page();
    this.list();
  }

  onFilter(event: any) {
    console.debug('Pesquisar por ', this.name);
    this.page.number = 0;
    this.list();
  }

  clearFilter() {
    console.debug('Limpando o filtro de pesquisa.');
    this.name = '';
    this.page.number = 0;
    this.list();
  }

  list(): void {
    this.loading = true;
     this.cardsService.list(this.name, this.page.number).subscribe({
        next: (data) => {
          this.cards = data._embedded.cards;
          this.page = data.page;
        },
        error: (error) => {
          this.loading = false;
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
          this.loading = false;
          console.info("Total de cartões recuperados: " + this.cards.length);
        }
    });
  }

  navigateFirst(): void {
    this.page.number = 0;
    this.list();
  }

  navigatePrevious(): void {
    this.page.number--;
    this.list();
  }

  navigateNext(): void {
    this.page.number++;
    this.list();
  }

  navigateLast(): void {
    this.page.number = this.page.totalPages - 1;
    this.list();
  }

  report(): void {
    console.log("Reportar...");
  }

  add(): void {
    console.log("Adicionar...");
  }

  view(card: Card): void {
    console.log("Visualizar: ", card);
  }

  edit(card: Card): void {
    console.log("Alterar: ", card);
  }

  remove(card: Card): void {
    console.log("Remover: ", card);
  }
}
