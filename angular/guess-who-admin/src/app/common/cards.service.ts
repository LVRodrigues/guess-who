import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { delay, Observable } from 'rxjs';
import { environment } from 'src/environments/environments';
import { Card } from './model/card';

const API_URL = environment.apiCardsURL;

@Injectable({
  providedIn: 'root'
})
export class CardsService {

  constructor(private http: HttpClient) { }

  list(name: string, page: number): Observable<any> {
    const query = new HttpParams()
      .set('name', name)
      .set('size', 6)
      .set('page', page);
    return this.http.get<any>(API_URL, {params: query});
  }

  getByID(id: string): Observable<Card> {
    return this.http.get<Card>(API_URL + '/' + id);
  }

  add(card: Card): Observable<Card> {
    return this.http.post<Card>(API_URL, card);
  }

  edit(card: Card): Observable<Card> {
    return this.http.put<Card>(API_URL + '/' + card.id, card);
  }
}

