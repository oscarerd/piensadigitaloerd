import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the ApiUsuariosProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ApiUsuariosProvider {

  constructor(public http: HttpClient) {
    console.log('Hello ApiUsuariosProvider Provider');
  }

  getUsuarios(){
    return this.http.get('https://randomuser.me/api/?results=25');
  }
}
