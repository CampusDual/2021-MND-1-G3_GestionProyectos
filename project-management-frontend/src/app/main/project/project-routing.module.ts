import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ProjectDetailComponent } from './project-detail/project-detail.component';
import { ProjectNewComponent } from './project-new/project-new.component';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';

const routes: Routes = [
  {
    path : '',
    component: ProjectsHomeComponent
  },
  {
    path:'new',
  component: ProjectNewComponent
  },
  {
  path:':project_id',
  component: ProjectDetailComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ProjectRoutingModule { }
