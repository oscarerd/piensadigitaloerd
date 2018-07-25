import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { OscarPage } from './oscar';

@NgModule({
  declarations: [
    OscarPage,
  ],
  imports: [
    IonicPageModule.forChild(OscarPage),
  ],
})
export class OscarPageModule {}
