import { Injectable, OnInit } from '@angular/core';

enum Mode {
  LIGHT = "light-mode",
  DARK  = "dark-mode"
}

@Injectable({
  providedIn: 'root'
})
export class ThemeService {

  private mode = Mode.LIGHT;
  private storage = Storage;

  constructor() {
    let aux = localStorage.getItem('mode');
    if (aux == null) {
      this.mode = Mode.LIGHT;
    } else if (aux === Mode.LIGHT) {
      this.mode = Mode.LIGHT;
    } else {
      this.mode = Mode.DARK;
    }
    document.documentElement.classList.add(this.mode);
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
    localStorage.setItem("mode", this.mode);
  }
}
