import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ProjectRoutingModule } from './project-routing.module';
import { ProjectDetailComponent } from './project-detail/project-detail.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { SharedModule } from '../../shared/shared.module';


@NgModule({
  declarations: [ ProjectDetailComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    SharedModule,
    ProjectRoutingModule
  ]
})
export class ProjectModule { }
