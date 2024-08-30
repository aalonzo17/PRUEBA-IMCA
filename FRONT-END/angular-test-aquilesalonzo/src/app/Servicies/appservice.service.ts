import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment.development';

@Injectable({
  providedIn: 'root'
})
export class AppserviceService {
  constructor(private _http: HttpClient) { }

  baseUrl: string = 'Products';

  getProductsList(): Observable<any[]>{
    return  this._http.get<any[]>(environment.domainUrl + this.baseUrl);
  }
}
