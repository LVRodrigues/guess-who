import { Component, EventEmitter, Input, Output } from '@angular/core';

@Component({
  selector: 'app-card-form-image',
  templateUrl: './card-form-image.component.html',
  styleUrls: ['./card-form-image.component.scss']
})
export class CardFormImageComponent {

  @Input() image: string | undefined;
  @Input() readonly: boolean;
  @Output() onChange: EventEmitter<string>;

  constructor() {
    this.image = '';
    this.readonly = false;
    this.onChange = new EventEmitter<string>();
  }

  load(): void {
    document.querySelector('input')?.click();
  }

  selectFile(event: any): void {
    let file = event.target.files[0];
    if (file) {
      let reader = new FileReader();
      reader.onload = (e: any) => {
        this.image = e.target.result;
        this.onChange.emit(this.image);
      }
      reader.readAsDataURL(file);
    }
  }

  reset(): void {
    this.image = '';
    this.onChange.emit(this.image);
  }
}
