package es.cd.dsnd.pm.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ontimize.jee.server.rest.ORestController;

import es.cd.dsnd.pm.api.core.service.IWorkloadService;

@RestController
@RequestMapping("/workloads")


public class WorkloadRestController extends ORestController<IWorkloadService> {

 @Autowired
 private IWorkloadService workloadService;

 @Override
 public IWorkloadService getService() {
  return this.workloadService;
 }
}
