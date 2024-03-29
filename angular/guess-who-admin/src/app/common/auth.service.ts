import { HttpClient, HttpErrorResponse, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { catchError, Observable, tap, throwError } from 'rxjs';
import { environment } from 'src/environments/environments';
 
import { TokenService } from './token.service';

const OAUTH_CLIENT = 'guess-who-game';
const OAUTH_SECRET = '7fcaf3a7-b1ab-4558-9a4a-004ad800d41a';
const API_URL = environment.apiLoginURL;

const HTTP_OPTIONS = {
  headers: new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  })
};

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  redirectUrl: string;

  constructor(
    private http: HttpClient, 
    private tokenService: TokenService,
    private router: Router) { 
      this.redirectUrl = '';
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
        })
      );
  }

  refreshToken(refreshToken: string): Observable<any> {
    const body = new HttpParams()
      .set('client_id', OAUTH_CLIENT)
      .set('client_secret', OAUTH_SECRET)
      .set('refresh_token', refreshToken)
      .set('grant_type', 'refresh_token');
    return this.http.post<any>(API_URL + '/protocol/openid-connect/token', body, HTTP_OPTIONS)
      .pipe(
        tap(res => {
          this.tokenService.saveToken(res.access_token);
          this.tokenService.saveRefreshToken(res.refresh_token);
        })
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
}
