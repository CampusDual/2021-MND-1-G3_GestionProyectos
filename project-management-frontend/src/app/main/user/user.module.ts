import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { UserRoutingModule } from './user-routing.module';
import { UserHomeComponent } from './user-home/user-home.component';
import { UserDetailComponent } from './user-detail/user-detail.component';
import { SharedModule } from '../../shared/shared.module';
import { UserNewComponent } from './user-new/user-new.component';

@NgModule({
  declarations: [
    UserHomeComponent,
    UserDetailComponent,
    UserNewComponent,
],
  imports: [
    CommonModule,
    OntimizeWebModule,
    SharedModule,
    UserRoutingModule
  ]
})
export class UserModule { }
