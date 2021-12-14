import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ProjectDetailComponent } from './project-detail/project-detail.component';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';

const routes: Routes = [
{
  path:':project_id',
  component: ProjectDetailComponent},
  {
    path : '',
    component: ProjectsHomeComponent
  }



];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ProjectRoutingModule { }
