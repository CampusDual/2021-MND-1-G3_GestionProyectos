import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { ProjectRoutingModule } from './project-routing.module';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';


@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    ProjectRoutingModule,
],
declarations: [ProjectsHomeComponent],
})
export class ProjectModule { }
