import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { UserRoutingModule } from './user-routing.module';
import { UserHomeComponent } from './user-home/user-home.component';

@NgModule({
  declarations: [UserHomeComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    UserRoutingModule
  ]
})
export class UserModule { }
