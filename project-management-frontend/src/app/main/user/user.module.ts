import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { UserRoutingModule } from './user-routing.module';
import { UserHomeComponent } from './user-home/user-home.component';
import { UserDetailComponent } from './user-detail/user-detail.component';
import { SharedModule } from '../../shared/shared.module';

@NgModule({
  declarations: [
    UserHomeComponent,
    UserDetailComponent,
],
  imports: [
    CommonModule,
    OntimizeWebModule,
    SharedModule,
    UserRoutingModule
  ]
})
export class UserModule { }
