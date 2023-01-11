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

  columns(): string[] {
    let result = ['text', 'evidence'];
    if (this.isEditing()) {
      result.push('actions');
    }
    return result;
  }

  getCardImage(): string {
    // return 'data:image/png;base64,' + this.card.image;
    return `data:image/png;base64,
    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
    MDASIkyRAAAAAElFTkSuQmCC`;
  }
}
