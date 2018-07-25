import { Component } from '@angular/core';
import { ActionSheetController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public actionSheetCtrl: ActionSheetController, public alertCtrl: AlertController) {

  }

  mostrarAlerta(){
    const textoAlerta = this.alertCtrl.create(
      {
        title: "Nuevo amigo!",
        subTitle: "Tu amigo Homi Güomi aceptó!",
        buttons: ["OK"]
      }
    );
    textoAlerta.present();
  }


  abrirActionSheet(){
    console.log('Abriendo el Menú');
    let actionsheet = this.actionSheetCtrl.create({
      title:"Escoger álbum",
      buttons:[{
        text:'Cámara',
        handler: () => {
          console.log('Camara ');
        }
      },{
        text: 'Galería',
        handler: function(){
          console.log('Galería ');
        }
      }
      ]

    });
    actionsheet.present();
  }

}
