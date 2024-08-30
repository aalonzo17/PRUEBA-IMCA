import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment.development';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ListaProductosserviceService {

  constructor(private _http: HttpClient) { }
    baseUrl: string = 'Products';

  postProductsList(data: any[]): Observable<any> {
    return this._http.post(environment.domainUrl+ this.baseUrl, data);
  }
}
