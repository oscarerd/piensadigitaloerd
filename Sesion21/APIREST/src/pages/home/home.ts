import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { ApiUsuariosProvider } from '../../providers/api-usuarios/api-usuarios';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  usuarios: any[] = [];

  constructor(public navCtrl: NavController, public ApiUsuariosProvider: ApiUsuariosProvider ) {

  }

  ionViewDidLoad(){
    debugger;
    this.ApiUsuariosProvider.getUsuarios().subscribe(
      (data) => { //eeeexito
        this.usuarios = data['results'];
      },
      (error) => {
        console.error(error);
      }
    )
  }
}
