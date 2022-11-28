import { Component, Input } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  hide : boolean = true;

  loginForm = new FormGroup({
    name: new FormControl(''),
    password: new FormControl('')
  });
  
  onSubmit() {
    console.log(this.loginForm.value);
  }
}
