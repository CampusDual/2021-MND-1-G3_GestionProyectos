import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UserHomeComponent } from './user-home/user-home.component';
import { UserDetailComponent } from './user-detail/user-detail.component';
import { UserNewComponent } from './user-new/user-new.component';

const routes: Routes = [{
  path : '',
  component: UserHomeComponent
},
{
  path:':new',
  component: UserNewComponent
},
{
  path:':user_',
  component: UserDetailComponent
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UserRoutingModule { }
