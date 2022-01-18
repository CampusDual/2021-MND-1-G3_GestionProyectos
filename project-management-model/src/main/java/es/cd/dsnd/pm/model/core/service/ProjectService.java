package es.cd.dsnd.pm.model.core.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.pm.api.core.service.IProjectService;
import es.cd.dsnd.pm.model.core.dao.AreaDao;
import es.cd.dsnd.pm.model.core.dao.AreaProjectDao;
import es.cd.dsnd.pm.model.core.dao.LevelsDao;
import es.cd.dsnd.pm.model.core.dao.ProjectDao;


@Lazy
@Service("ProjectService")
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectDao projectDao;

	 @Autowired private AreaDao areaDao;

	 @Autowired private AreaProjectDao areaProjectDao;
	 @Autowired private LevelsDao levelsDao;
	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	
@Override 
	public EntityResult projectQuery (Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.query(projectDao, keyMap, attrList);
	}
@Override
	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.insert(projectDao, attrMap);
	}
@Override
	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.update(projectDao, attrMap, keyMap);
	}
@Override
@Transactional(rollbackFor = Exception.class)
	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException
	{
		return this.daoHelper.delete(this.projectDao, keyMap);
	}
@Override
public EntityResult areaQuery(Map<String, Object> keysValues, List<String> attributes)
		throws OntimizeJEERuntimeException {

	return this.daoHelper.query(this.areaDao, keysValues, attributes);
}
@Override
public EntityResult areaInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException {

	return this.daoHelper.insert(this.areaDao, attributes);
}
@Override
public EntityResult areaUpdate(Map<String, Object> attributes, Map<String, Object> keyValues)
		throws OntimizeJEERuntimeException {

	return this.daoHelper.update(this.areaDao, keyValues, attributes);
}
@Override
public EntityResult areaDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException {

	return this.daoHelper.delete(this.areaDao, keyValues);
}
@Override
public EntityResult areaProjectQuery(Map<String, Object> keysValues, List<String> attributes)
		throws OntimizeJEERuntimeException {

	return this.daoHelper.query(this.areaProjectDao, keysValues, attributes);
}
@Override
public EntityResult areaProjectInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException {

	return this.daoHelper.insert(this.areaProjectDao, attributes);
}
@Override
public EntityResult areaProjectUpdate(Map<String, Object> attributes, Map<String, Object> keyValues)
		throws OntimizeJEERuntimeException {

	return this.daoHelper.update(this.areaProjectDao, keyValues, attributes);
}
@Override
public EntityResult areaProjectDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException {

	return this.daoHelper.delete(this.areaProjectDao, keyValues);
}
@Override
public EntityResult levelQuery(Map<String, Object> keysValues, List<String> attributes)
		throws OntimizeJEERuntimeException {
	// TODO Auto-generated method stub
	return this.daoHelper.query(levelsDao, keysValues, attributes);
}
@Override
public EntityResult levelInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException {
	// TODO Auto-generated method stub
	return this.daoHelper.insert(this.levelsDao, attributes);
}
@Override
public EntityResult levelUpdate(Map<String, Object> attributes, Map<String, Object> keyValues)
		throws OntimizeJEERuntimeException {
	// TODO Auto-generated method stub
	return this.daoHelper.update(this.levelsDao, keyValues, attributes);
}
@Override
public EntityResult levelDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException {
	// TODO Auto-generated method stub
	return this.daoHelper.delete(this.levelsDao, keyValues);
}

}
