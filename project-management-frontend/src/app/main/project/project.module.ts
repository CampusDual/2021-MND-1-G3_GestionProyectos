import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { ProjectRoutingModule } from './project-routing.module';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';
import { ProjectDetailComponent } from './project-detail/project-detail.component';
import { SharedModule } from '../../shared/shared.module';
import { ProjectNewComponent } from './project-new/project-new.component';


@NgModule({
  declarations: [
    ProjectsHomeComponent,
    ProjectDetailComponent,
    ProjectNewComponent
  ],
  imports: [
    CommonModule,
    OntimizeWebModule,
    SharedModule,
    ProjectRoutingModule
  ]
})
export class ProjectModule { }
