import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { Observable } from 'rxjs/Observable';
// import { Subject } from 'rxjs/Subject';
// import { Http } from '@angular/http';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  mensaje: String = "";
  username: String = "";
  color: String = "white";

  constructor(public navCtrl: NavController, public storage: Storage) {

  }

  obtenerUsuarios(){
      this.mensaje = "Iniciar el observador";
      let miObservador = Observable.create(observer => {
        setInterval(()=>{
          observer.next("Oscar ERD");
        },3000);
      });
  

    miObservador.subscribe((data) => {
      this.username = data;
    });
  }

  mostrarColor(){
    this.storage.get('color').then((result) => {
      if (result == null) {
        this.color = "black";
        console.log("Color nulo");
      }
      else
      {
        this.color = result;
        console.log("Cambio de color");
      }

    });
  }

  public set(settingName, value){
    return this.storage.set(settingName,value);
  }
  public async get(settingName){
    return await this.storage.get(settingName);
  }
  public async remove(settingName){
    return await this.storage.remove(settingName);
  }
  public clear() {
    this.storage.clear().then(() => {
    console.log("todas las llaves limpias");
    });
  }

}