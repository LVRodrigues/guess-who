import { Component, Input } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from '../common/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  hide : boolean = true;

  loginForm = new FormGroup({
    username: new FormControl(''),
    password: new FormControl('')
  });

  constructor(
    private authService: AuthService,
    private router: Router) {
  }

  onSubmit() {
    this.authService.logout();
    console.log(this.loginForm.value);
    this.authService.login(this.loginForm.value)
      .subscribe({
        next: (v) => {},
        error: (e) => {
          console.error(e);
          window.alert('Não foi possível autenticar o usuário.');
        },
        complete: () => {
          this.router.navigate(['/home'])
            .then(_ => console.info('Usuário autenticado.'));
        }
    });
  }
}
