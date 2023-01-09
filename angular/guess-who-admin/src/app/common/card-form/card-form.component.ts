import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import {v4 as uuidv4} from 'uuid';

import { Card } from '../model/card';
import { Question } from '../model/question';
import { QuestionDialogComponent } from './question-dialog/question-dialog.component';

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

  private opened: boolean;
  private edited: boolean;

  constructor(
    private router: Router,
    private dialog: MatDialog
  ) {
    this.status = FormStatus.VIEWING;
    this.card = new Card();
    this.opened = false;
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

  questionRemove(question: Question): void {
    this.card.questions = this.card.questions.filter(item => item.id != question.id);
    this.edited = true;
  }

  questionEdit(question: Question): void {
    if (!this.opened) {
      this.opened = true;
      const dialogRef = this.dialog.open(QuestionDialogComponent, {
        data: question,
        maxHeight: '100%',
        width: '540px',
        maxWidth: '100%',
        disableClose: false,
        hasBackdrop: true
      });
      dialogRef.afterClosed().subscribe((data) => {
        if (data) {
          this.edited = true;
        }
        this.opened = false;
      });
    }
  }

  questionAdd(): void {
    if (!this.opened) {
      this.opened = true;
      let question = new Question();
      question.id = uuidv4();
      const dialogRef = this.dialog.open(QuestionDialogComponent, {
        data: question,
        maxHeight: '100%',
        width: '540px',
        maxWidth: '100%',
        disableClose: false,
        hasBackdrop: true
      });
      dialogRef.afterClosed().subscribe((data) => {
        if (!this.card.questions) {
          this.card.questions = [];
        }
        if (data) {
          this.card.questions = [data, ...this.card.questions];
          this.edited = true;
        }
        this.opened = false;
      });
    }
  }

  onEdit(event: any) {
    this.edited = true;
  }

  confirm() {
    this.onConfirm.emit(this.card);
  }
}
