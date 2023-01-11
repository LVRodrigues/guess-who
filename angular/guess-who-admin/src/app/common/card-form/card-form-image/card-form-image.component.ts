import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-card-form-image',
  templateUrl: './card-form-image.component.html',
  styleUrls: ['./card-form-image.component.scss']
})
export class CardFormImageComponent {

  @Input() image: string;

  constructor() {
    this.image = '';
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
      }
      reader.readAsDataURL(file);
    }
  }

  reset(): void {
    this.image = '';
  }
}
