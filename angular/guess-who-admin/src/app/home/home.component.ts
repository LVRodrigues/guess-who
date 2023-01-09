import { HttpErrorResponse } from '@angular/common/http';
import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';
import { CardsService } from '../common/cards.service';
import { Card } from '../common/model/card';
import { Page } from '../common/model/page';
import { NotifierService } from '../common/notifier/notifier.service';

const FILTER_PARAM = 'filter-param';
const PAGE_PARAM = 'page-param';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  @Input() name: string;

  loading: boolean;

  cards: Card[];
  page: Page;

  constructor(
      private cardsService: CardsService,
      private router: Router,
      private notifier: NotifierService) {
    this.name = localStorage.getItem(FILTER_PARAM)!;
    this.loading = false;
    this.cards = [];
    this.page = new Page();
    this.page.number = Number(localStorage.getItem(PAGE_PARAM));
    this.list();
  }

  onFilter(event: any) {
    this.page.number = 0;
    this.list();
  }

  clearFilter() {
    this.name = '';
    this.page.number = 0;
    this.list();
  }

  list(): void {
    this.loading = true;
    localStorage.setItem(PAGE_PARAM, this.page.number.toString());
    localStorage.setItem(FILTER_PARAM, this.name);
    this.cardsService.list(this.name, this.page.number).subscribe({
        next: (data) => {
          this.cards = data._embedded.cards;
          this.page = data.page;
        },
        error: (error) => {
          this.loading = false;
          if (error.status === 404) {
            this.cards = [];
            this.page  = new Page();
          } else {
            throw error;
          }
        },
        complete: () => {
          this.loading = false;
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
    this.notifier.error('Relatório não implementado...')    
  }

  add(): void {
    this.router.navigate(['add']);
  }

  view(card: Card): void {
    this.router.navigate(['view', card]);
  }

  edit(card: Card): void {
    this.router.navigate(['edit', card]);
  }

  remove(card: Card): void {
    this.router.navigate(['remove', card]);
  }
}
