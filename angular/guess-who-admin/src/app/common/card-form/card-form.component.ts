import { Component, Input, Output } from '@angular/core';
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

  constructor(
    private router: Router
  ) {
    this.status = FormStatus.VIEWING;
    this.card = new Card();
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
}
