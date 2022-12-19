import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { delay, Observable } from 'rxjs';
import { Card } from './model/card';

const API_URL = 'http://guess-admin:5001/v1/cards';

@Injectable({
  providedIn: 'root'
})
export class CardsService {

  constructor(private http: HttpClient) { }

  list(name: string): Observable<any> {
    const query = new HttpParams()
      .set('name', name)
      .set('size', 8);
    return this.http.get<any>(API_URL, {params: query});
  }
}
