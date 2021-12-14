import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { ProjectRoutingModule } from './project-routing.module';
import { ProjectDetailComponent } from './project-detail/project-detail.component';
import { SharedModule } from '../../shared/shared.module';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';

@NgModule({
  declarations: [ ProjectDetailComponent,ProjectsHomeComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    SharedModule,
    ProjectRoutingModule
  ]




})
export class ProjectModule { }
