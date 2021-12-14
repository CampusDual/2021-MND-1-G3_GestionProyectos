import { MenuRootItem } from 'ontimize-web-ngx';

export const MENU_CONFIG: MenuRootItem[] = [
  { id: 'home', name: 'HOME', icon: 'home', route: '/main/home' },
  { id: 'user', name: 'PEOPLE', icon: 'people', route: '/main/user'},
  { id: 'projects', name: 'PROJECTS', icon: 'credit_card', route: '/main/project' },
  // ANTES ERA MAIN/PROJECTS
  { id: 'logout', name: 'LOGOUT', route: '/login', icon: 'power_settings_new', confirm: 'yes' }
];
