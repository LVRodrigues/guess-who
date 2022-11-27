import { Injectable } from '@angular/core';

enum Mode {
  LIGHT = "light-mode",
  DARK  = "dark-mode"
}

@Injectable({
  providedIn: 'root'
})
export class ThemeService {

  private mode = Mode.LIGHT;

  constructor() {
    document.body.classList.add(this.mode);
  }

  public Mode() {
    return this.mode;
  }

  public toggle() {
    document.documentElement.classList.remove(this.mode);
    if (this.mode == Mode.LIGHT) {
      this.mode = Mode.DARK;
    } else {
      this.mode = Mode.LIGHT;
    }
    document.documentElement.classList.add(this.mode);
  }
}
