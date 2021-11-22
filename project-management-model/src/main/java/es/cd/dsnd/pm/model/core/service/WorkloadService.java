package es.cd.dsnd.pm.model.core.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
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
	public EntityResult workloadQuery (Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.query(WorloadDao, keyMap, attrList);
	}
@Override
	public EntityResult workloadInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.insert(WorloadDao, attrMap);
	}
@Override
	public EntityResult workloadUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.update(WorloadDao, attrMap, keyMap);
	}
@Override
	public EntityResult workloadDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.delete(this.WorloadDao, keyMap);
	}

}