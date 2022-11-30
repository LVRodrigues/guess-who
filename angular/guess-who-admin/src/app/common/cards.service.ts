import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Page } from './model/page';

const API_URL = 'http://guess-admin:5001/v1/cards';

@Injectable({
  providedIn: 'root'
})
export class CardsService {

  constructor(private http: HttpClient) { }

  list(): Observable<any> {
    return this.http.get<any>(API_URL);
  }
}
