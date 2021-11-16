package es.cd.dsnd.pm.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ontimize.jee.server.rest.ORestController;

import es.cd.dsnd.pm.api.core.service.IProjectService;

@RestController
@RequestMapping("/projects")
@ComponentScan(basePackageClasses={es.cd.dsnd.pm.api.core.service.IProjectService.class})

public class ProjectRestController extends ORestController<IProjectService> {

 @Autowired
 private IProjectService projectService;

 @Override
 public IProjectService getService() {
  return this.projectService;
 }
}