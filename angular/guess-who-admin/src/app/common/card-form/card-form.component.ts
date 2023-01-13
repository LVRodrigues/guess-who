import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Router } from '@angular/router';

import { Card } from '../model/card';
import { Question } from '../model/question';

enum FormStatus {
  VIEWING,
  INSERTING,
  REMOVING,
  UPDATING
}

@Component({
  selector: 'app-card-form',
  templateUrl: './card-form.component.html',
  styleUrls: ['./card-form.component.scss']
})
export class CardFormComponent {

  @Input() status: FormStatus;
  @Input() card: Card;
  @Output() onConfirm: EventEmitter<Card>;

  private edited: boolean;

  constructor(
    private router: Router,
  ) {
    this.status = FormStatus.VIEWING;
    this.card = new Card();
    this.edited = false;
    this.onConfirm = new EventEmitter<Card>();
  }

  getStatus(): string {
    let result = 'NONE';
    switch (this.status) {
      case FormStatus.VIEWING:
        result = 'Visualizando';
        break;
      case FormStatus.INSERTING:
        result = 'Inserindo';
        break;
      case FormStatus.REMOVING:
        result = 'Removendo';
        break;
      case FormStatus.UPDATING:
        result = 'Alterando';
        break;
    }
    return result;
  }

  isEditing(): boolean {
    return this.status == FormStatus.INSERTING ||
           this.status == FormStatus.UPDATING;
  }

  canConfirm(): boolean {
    return this.status == FormStatus.REMOVING || this.edited;
  }

  back(): void {
    this.router.navigate(['home']);
  }

  onEdit(event: any) {
    this.edited = true;
  }

  confirm() {
    this.onConfirm.emit(this.card);
  }

  imageChange(value: string | undefined): void {
    this.card.image = value;
    this.edited = true;
  }

  questionsChange(value: Question[]): void {
    this.card.questions = value;
    this.edited = true;
  }
}
