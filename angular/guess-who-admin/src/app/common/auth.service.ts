import { HttpClient, HttpErrorResponse, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { catchError, Observable, tap, throwError } from 'rxjs';

import { TokenService } from './token.service';

const OAUTH_CLIENT = 'guess-who-game';
const OAUTH_SECRET = '7fcaf3a7-b1ab-4558-9a4a-004ad800d41a';
const API_URL = 'http://guess-auth:8080/realms/guess-who';

const HTTP_OPTIONS = {
  headers: new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  })
};

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  redirectUrl: string = '';

  private static handleError(error: HttpErrorResponse): any {
    if (error.error instanceof ErrorEvent) {
      console.error('Ocorreu um erro: ', error.error.message);
    } else {
      console.error(
        `Erro retornado do servidor: ${error.status} - ` + `${error.error}`);
    }
    return throwError(() => error);
  }

  private static log(message: string): any {
    console.log(message);
  }

  constructor(
    private http: HttpClient, 
    private tokenService: TokenService,
    private router: Router) { 
  }

  login(loginData: any): Observable<any> {
    this.logout();
    const body = new HttpParams()
      .set('grant_type', 'password')
      .set('client_id', OAUTH_CLIENT)
      .set('client_secret', OAUTH_SECRET)
      .set('username', loginData.username)
      .set('password', loginData.password);

    return this.http.post<any>(API_URL + '/protocol/openid-connect/token', body, HTTP_OPTIONS)
      .pipe(
        tap(res => {
          this.tokenService.saveToken(res.access_token);
          this.tokenService.saveRefreshToken(res.refresh_token);
        }),
        catchError(AuthService.handleError)
      );
  }

  refreshToken(refreshData: any): Observable<any> {
    this.logout();
    const body = new HttpParams()
      .set('refresh_token', refreshData.refresh_token)
      .set('grant_type', 'refresh_token');
    return this.http.post<any>(API_URL + '/protocol/openid-connect/token/token', body, HTTP_OPTIONS)
      .pipe(
        tap(res => {
          this.tokenService.saveToken(res.access_token);
          this.tokenService.saveRefreshToken(res.refresh_token);
        }),
        catchError(AuthService.handleError)
      );
  }

  logout(): void {
    this.tokenService.removeToken();
    this.tokenService.removeRefreshToken();
    this.router.navigate(['/login']);
  }

  isLogged(): boolean {
    return (this.tokenService.getToken() !== null);
  }

  register(data: any): Observable<any> {
    return this.http.post<any>(API_URL + 'oauth/signup', data)
      .pipe(
        tap(_ => AuthService.log('register')),
        catchError(AuthService.handleError)
      );
  }

  secured(): Observable<any> {
    return this.http.get<any>(API_URL + 'secret')
      .pipe(catchError(AuthService.handleError));
  }  
}
