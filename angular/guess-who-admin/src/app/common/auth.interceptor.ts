import {
  HttpErrorResponse,
  HttpEvent, HttpHandler, HttpInterceptor, HttpRequest, HttpResponse
} from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { catchError, map, Observable, throwError } from 'rxjs';

import { AuthService } from './auth.service';
import { TokenService } from './token.service';

@Injectable()
export class AuthInterceptor implements HttpInterceptor {

  constructor(
    private router: Router,
    private tokenService: TokenService,
    private authService: AuthService) {
  }

  intercept(request: HttpRequest<unknown>, next: HttpHandler): Observable<HttpEvent<unknown>> {

    const token = this.tokenService.getToken();
    const refreshToken = this.tokenService.getRefreshToken();

    if (token) {
      request = request.clone({
        setHeaders: {
          Authorization: 'Bearer ' + token
        }
      });
    }

    if (!request.headers.has('Content-Type')) {
      request = request.clone({
        setHeaders: {
          'Content-Type': 'application/json',
        }
      });
    }

    if (!request.headers.has('Accept')) {
      request = request.clone({
        setHeaders: {
          'Accept': 'application/json'
        }
      });
    }    

    // request = request.clone({
    //   setHeaders: {
    //     'Access-Control-Allow-Origin': '*',
    //     'Access-Control-Allow-Methods': 'GET,OPTIONS',
    //     'Access-Control-Max-Age': '3600',
    //     'Access-Control-Allow-Headers': 'Content-Type'
    //   }
    // });

    return next.handle(request).pipe(
      map((event: HttpEvent<unknown>) => {
        if (event instanceof HttpResponse) {
          console.log('event--->>>', event);
        }
        return event;
      }),
      catchError((error: HttpErrorResponse) => {
        console.error(error);
        if (error.status === 401) {
          if (error.error.error === 'invalid_token') {
            this.authService.refreshToken({refresh_token: refreshToken})
              .subscribe(() => {
                location.reload();
              });
          } else {
            this.router.navigate(['login']).then(_ => console.log('redirect to login'));
          }
        }
        return throwError(() => error);
      }));
  }  
}
