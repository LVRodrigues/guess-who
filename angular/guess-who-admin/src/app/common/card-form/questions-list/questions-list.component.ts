import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { v4 as uuidv4 } from 'uuid';
import { Question } from '../../model/question';
import { QuestionDialogComponent } from '../question-dialog/question-dialog.component';

@Component({
  selector: 'app-questions-list',
  templateUrl: './questions-list.component.html',
  styleUrls: ['./questions-list.component.scss']
})
export class QuestionsListComponent {

  @Input() questions: Question[];
  @Input() readonly: boolean;
  @Output() onChange: EventEmitter<Question[]>;

  private opened: boolean;

  constructor(
    private dialog: MatDialog
  ) {
    this.questions = [];
    this.readonly = true;
    this.onChange = new EventEmitter<Question[]>();
    this.opened = false;
  }

  columns(): string[] {
    let result = ['text', 'evidence'];
    if (!this.readonly) {
      result.push('actions');
    }
    return result;
  }  

  questionRemove(question: Question): void {
    this.questions = this.questions.filter(item => item.id != question.id);
    this.onChange.emit(this.questions);
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
          this.onChange.emit(this.questions);
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
        if (!this.questions) {
          this.questions = [];
        }
        if (data) {
          this.questions = [data, ...this.questions];
          this.onChange.emit(this.questions);
        }
        this.opened = false;
      });
    }
  }  
}
