import { Component, Input, Output } from '@angular/core';
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

  opened: boolean;

  constructor(
    private router: Router,
    private dialog: MatDialog
  ) {
    this.status = FormStatus.VIEWING;
    this.card = new Card();
    this.opened = false;
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

  back(): void {
    this.router.navigate(['home']);
  }

  questionRemove(question: Question): void {
    this.card.questions = this.card.questions.filter(item => item.id != question.id);
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
        this.opened = false;
        if (data) {
          this.card.questions = [data, ...this.card.questions];
        }
      });
    }
  }
}
