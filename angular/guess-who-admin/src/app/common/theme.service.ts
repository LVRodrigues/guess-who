import { Injectable, OnInit } from '@angular/core';

enum Mode {
  LIGHT = "light-mode",
  DARK  = "dark-mode"
}

@Injectable({
  providedIn: 'root'
})
export class ThemeService {

  private mode: Mode;

  constructor() {
    let aux: string | null = localStorage.getItem('mode');
    if (aux == null) {
      let prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;
      if (prefersDark) {
        this.mode = Mode.DARK
      } else {
        this.mode = Mode.LIGHT;
      }
    } else if (aux === Mode.LIGHT) {
      this.mode = Mode.LIGHT;
    } else {
      this.mode = Mode.DARK;
    }
    document.documentElement.classList.add(this.mode);
  }

  Mode(): Mode {
    return this.mode;
  }

  toggle() {
    document.documentElement.classList.remove(this.mode);
    if (this.mode == Mode.LIGHT) {
      this.mode = Mode.DARK;
    } else {
      this.mode = Mode.LIGHT;
    }
    document.documentElement.classList.add(this.mode);
    localStorage.setItem("mode", this.mode);
  }

  icon(): string {
    if (this.mode == Mode.LIGHT) {
      return 'nightlight';
    } else {
      return 'light_mode';
    }
  }

  iconTooltip(): string {
    
    if (this.mode == Mode.LIGHT) {
      return 'Selecionar tema escuro';
    } else {
      return 'Selecionar tema claro';
    }
  }
}
