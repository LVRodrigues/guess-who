import { Injectable } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { NotifierComponent } from './notifier.component';

@Injectable({
  providedIn: 'root'
})
export class NotifierService {

  constructor(private snack: MatSnackBar) { }

  info(message: string): void {
    this.snack.openFromComponent(NotifierComponent, {
      panelClass: 'notifier-info',
      horizontalPosition: 'end', 
      verticalPosition: 'top',
      data: { 'message': message, 'icon': 'check'},
      duration: 5000
    });
  }

  error(message: string): void {
    this.snack.openFromComponent(NotifierComponent, {
      panelClass: 'notifier-error',
      horizontalPosition: 'end', 
      verticalPosition: 'top',
      data: { 'message': message, 'icon': 'check'}
    });
  }
}
