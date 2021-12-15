import { MenuRootItem } from 'ontimize-web-ngx';

export const MENU_CONFIG: MenuRootItem[] = [
  { id: 'home', name: 'HOME', icon: 'home', route: '/main/home' },
  { id: 'user', name: 'PEOPLE', icon: 'people', route: '/main/user'},
  { id: 'projects', name: 'PROJECTS', icon: 'assignment', route: '/main/project' },
  // mirar icon:build con marta
  // ANTES ERA MAIN/PROJECTS
  { id: 'logout', name: 'LOGOUT', route: '/login', icon: 'power_settings_new', confirm: 'yes' }
];
