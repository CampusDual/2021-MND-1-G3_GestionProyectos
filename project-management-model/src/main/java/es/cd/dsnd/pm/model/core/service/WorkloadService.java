package es.cd.dsnd.pm.model.core.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.dto.EntityResultMapImpl;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.pm.api.core.service.IWorkloadService;
import es.cd.dsnd.pm.model.core.dao.WorkloadDao;

@Lazy
@Service("WorkloadService")
public class WorkloadService implements IWorkloadService {

	@Autowired
	private WorkloadDao WorloadDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult workloadQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(WorloadDao, keyMap, attrList);
	}

	@Override
	public EntityResult workloadInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {

		EntityResult toRet = new EntityResultMapImpl();
		toRet.setCode(EntityResult.OPERATION_WRONG);
		Map<String, Object> idProjectMap = new HashMap<String, Object>();
		idProjectMap.put(WorkloadDao.PROJECT_ID, attrMap.get(WorkloadDao.PROJECT_ID));
		List<String> attr_user = new ArrayList<String>();
		attr_user.add(WorkloadDao.USER_);
		EntityResult workloadQuery = this.workloadQuery(idProjectMap, attr_user);
		
		if (workloadQuery.getCode() != EntityResult.OPERATION_WRONG) {
			Map<String, Object> idUserMap = new HashMap<String, Object>();
			idUserMap.put(WorkloadDao.USER_, attrMap.get(WorkloadDao.USER_));
			int recordIndex = workloadQuery.getRecordIndex(idUserMap);
			
			if (recordIndex < 0) {
				boolean allow = checkAllowUser(idUserMap, attrMap.get(WorkloadDao.WORKLOAD_PERCENTAGE));
				
				if (allow) {
					return this.daoHelper.insert(WorloadDao, attrMap);					
				}else {
					toRet.setMessage("La carga de trabajo excede el 100%");
					return toRet;
				}
			}else {
				toRet.setMessage("El empleado ya esta asignado a este proyecto");
				return toRet;
			}
		}
		
		toRet.setMessage("No se puede consultar la relacion de empleados y proyectos");
		return toRet;

		
	}

	private boolean checkAllowUser(Map<String, Object> idUserMap, Object percentage) {
		
		List<String> attWLP = new ArrayList<String>();
		attWLP.add(WorkloadDao.WORKLOAD_PERCENTAGE);
		EntityResult workloadQuery = this.workloadQuery(idUserMap, attWLP);
		
		if (workloadQuery.getCode() != EntityResult.OPERATION_WRONG) {
			
			float wtotal = 0;
			for (int i = 0; i < workloadQuery.calculateRecordNumber(); i++) {
				Map recordValues = workloadQuery.getRecordValues(i);
				wtotal += ((BigDecimal)recordValues.get(WorkloadDao.WORKLOAD_PERCENTAGE)).floatValue();
			}
			
			wtotal += (float) percentage; 
			
			if (wtotal <= 1f) {
				return true;
			}
			
		}
		
		return false;
		
	}

	@Override
	public EntityResult workloadUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(WorloadDao, attrMap, keyMap);
	}

	@Override
	public EntityResult workloadDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.WorloadDao, keyMap);
	}

}