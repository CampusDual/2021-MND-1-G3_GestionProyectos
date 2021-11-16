package es.cd.dsnd.pm.model.core.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.pm.api.core.service.IProjectService;
import es.cd.dsnd.pm.model.core.dao.ProjectDao;


@Lazy
@Service("ProjectService")
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectDao ProjectDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	
@Override 
	public EntityResult projectQuery (Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.query(ProjectDao, keyMap, attrList);
	}
@Override
	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.insert(ProjectDao, attrMap);
	}
@Override
	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.update(ProjectDao, attrMap, keyMap);
	}
@Override
	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.delete(this.ProjectDao, keyMap);
	}

}
