import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { CesarPage } from './cesar';

@NgModule({
  declarations: [
    CesarPage,
  ],
  imports: [
    IonicPageModule.forChild(CesarPage),
  ],
})
export class CesarPageModule {}
