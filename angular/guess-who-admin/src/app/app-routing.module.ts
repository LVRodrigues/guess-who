import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from './auth.guard';
import { CardAddComponent } from './card-add/card-add.component';
import { CardEditComponent } from './card-edit/card-edit.component';
import { CardRemoveComponent } from './card-remove/card-remove.component';
import { CardViewComponent } from './card-view/card-view.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { RegisterComponent } from './register/register.component';

const routes: Routes = [
    { path: '', redirectTo: 'home', pathMatch: 'full' },
    { path: 'home', canActivate: [ AuthGuard ], component: HomeComponent },
    { path: 'add', canActivate: [ AuthGuard ], component: CardAddComponent },
    { path: 'remove', canActivate: [ AuthGuard ], component: CardRemoveComponent },
    { path: 'view', canActivate: [ AuthGuard ], component: CardViewComponent },
    { path: 'edit', canActivate: [ AuthGuard ], component: CardEditComponent },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },
    { path: '404', component: NotFoundComponent },
    { path: '**', redirectTo: '404' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
